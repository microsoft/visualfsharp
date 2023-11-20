// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace Internal.Utilities.Collections

open System
open System.Collections.Generic
open System.Diagnostics

open Internal.Utilities.Library.Extras

[<RequireQualifiedAccess>]
type internal CacheEvent =
    | Evicted
    | Collected
    | Weakened
    | Strengthened

[<StructuralEquality; NoComparison>]
type internal ValueLink<'T when 'T: not struct> =
    | Strong of 'T
    | Weak of WeakReference<'T>

[<DebuggerDisplay("{DebuggerDisplay}")>]
type internal LruCache<'TKey, 'TVersion, 'TValue when 'TKey: equality and 'TVersion: equality and 'TValue: not struct>
    (
        keepStrongly,
        ?keepWeakly,
        ?requiredToKeep,
        ?event
    ) =

    let keepWeakly = defaultArg keepWeakly 100
    let requiredToKeep = defaultArg requiredToKeep (fun _ -> false)
    let event = defaultArg event (fun _ _ -> ())

    let dictionary = Dictionary<'TKey, Dictionary<'TVersion, _>>()

    // Lists to keep track of when items were last accessed. First item is most recently accessed.
    let strongList = LinkedList<'TKey * 'TVersion * string * ValueLink<'TValue>>()
    let weakList = LinkedList<'TKey * 'TVersion * string * ValueLink<'TValue>>()

    let rec removeCollected (node: LinkedListNode<_>) =
        if node <> null then
            let key, version, label, value = node.Value

            match value with
            | Weak w ->
                let next = node.Next

                match w.TryGetTarget() with
                | false, _ ->
                    weakList.Remove node
                    dictionary[ key ].Remove version |> ignore

                    if dictionary[key].Count = 0 then
                        dictionary.Remove key |> ignore

                    event CacheEvent.Collected (label, key, version)
                | _ -> ()

                removeCollected next
            | _ -> failwith "Illegal state, strong reference in weak list"

    let cutWeakListIfTooLong () =
        if weakList.Count > keepWeakly then
            removeCollected weakList.First

            let mutable node = weakList.Last

            while weakList.Count > keepWeakly && node <> null do
                let previous = node.Previous
                let key, version, label, _ = node.Value
                weakList.Remove node
                dictionary[ key ].Remove version |> ignore

                if dictionary[key].Count = 0 then
                    dictionary.Remove key |> ignore

                event CacheEvent.Evicted (label, key, version)
                node <- previous

    let cutStrongListIfTooLong () =
        let mutable node = strongList.Last

        while strongList.Count > keepStrongly && node <> null do
            let previous = node.Previous

            match node.Value with
            | _, _, _, Strong v when requiredToKeep v -> ()
            | key, version, label, Strong v ->
                strongList.Remove node
                node.Value <- key, version, label, Weak(WeakReference<_> v)
                weakList.AddFirst node
                event CacheEvent.Weakened (label, key, version)
            | _key, _version, _label, _ -> failwith "Invalid state, weak reference in strong list"

            node <- previous

        cutWeakListIfTooLong ()

    let pushNodeToTop (node: LinkedListNode<_>) =
        match node.Value with
        | _, _, _, Strong _ ->
            strongList.AddFirst node
            cutStrongListIfTooLong ()
        | _, _, _, Weak _ -> failwith "Invalid operation, pushing weak reference to strong list"

    let pushValueToTop key version label value =
        let node = strongList.AddFirst(value = (key, version, label, Strong value))
        cutStrongListIfTooLong ()
        node

    member _.DebuggerDisplay = $"Cache(S:{strongList.Count} W:{weakList.Count})"

    member _.Set(key, version, label, value) =
        match dictionary.TryGetValue key with
        | true, versionDict ->

            if versionDict.ContainsKey version then
                // TODO this is normal for unversioned cache;
                // failwith "Suspicious - overwriting existing version"

                let node: LinkedListNode<_> = versionDict[version]

                match node.Value with
                | _, _, _, Strong _ -> strongList.Remove node
                | _, _, _, Weak _ ->
                    weakList.Remove node
                    event CacheEvent.Strengthened (label, key, version)

                node.Value <- key, version, label, Strong value
                pushNodeToTop node

            else
                let node = pushValueToTop key version label value
                versionDict[version] <- node
                // weaken all other versions (unless they're required to be kept)
                let versionsToWeaken = versionDict.Keys |> Seq.filter ((<>) version) |> Seq.toList

                let mutable anythingWeakened = false

                for otherVersion in versionsToWeaken do
                    let node = versionDict[otherVersion]

                    match node.Value with
                    | _, _, _, Strong value when not (requiredToKeep value) ->
                        strongList.Remove node
                        node.Value <- key, otherVersion, label, Weak(WeakReference<_> value)
                        weakList.AddFirst node
                        event CacheEvent.Weakened (label, key, otherVersion)
                        anythingWeakened <- true
                    | _ -> ()

                if anythingWeakened then
                    cutWeakListIfTooLong ()

        | false, _ ->
            let node = pushValueToTop key version label value
            dictionary[key] <- Dictionary()
            dictionary[key][version] <- node

    member this.Set(key, version, value) =
        this.Set(key, version, "[no label]", value)

    member _.TryGet(key, version) =

        match dictionary.TryGetValue key with
        | false, _ -> None
        | true, versionDict ->
            match versionDict.TryGetValue version with
            | false, _ -> None
            | true, node ->
                match node.Value with
                | _, _, _, Strong v ->
                    strongList.Remove node
                    pushNodeToTop node
                    Some v

                | _, _, label, Weak w ->
                    match w.TryGetTarget() with
                    | true, value ->
                        weakList.Remove node
                        let node = pushValueToTop key version label value
                        event CacheEvent.Strengthened (label, key, version)
                        versionDict[version] <- node
                        Some value
                    | _ ->
                        weakList.Remove node
                        versionDict.Remove version |> ignore

                        if versionDict.Count = 0 then
                            dictionary.Remove key |> ignore

                        event CacheEvent.Collected (label, key, version)
                        None

    /// Returns an option of a value for given key and version, and also a list of all other versions for given key
    member this.GetAll(key, version) =
        this.TryGet(key, version),

        match dictionary.TryGetValue key with
        | false, _ -> []
        | true, versionDict ->
            versionDict.Values
            |> Seq.map (fun node -> node.Value)
            |> Seq.filter (p24 >> ((<>) version))
            |> Seq.choose (function
                | _, ver, _, Strong v -> Some(ver, v)
                | _, ver, _, Weak r ->
                    match r.TryGetTarget() with
                    | true, x -> Some(ver, x)
                    | _ -> None)
            |> Seq.toList

    member _.Remove(key, version) =
        match dictionary.TryGetValue key with
        | false, _ -> ()
        | true, versionDict ->
            match versionDict.TryGetValue version with
            | true, node ->
                versionDict.Remove version |> ignore

                if versionDict.Count = 0 then
                    dictionary.Remove key |> ignore

                match node.Value with
                | _, _, _, Strong _ -> strongList.Remove node
                | _, _, _, Weak _ -> weakList.Remove node
            | _ -> ()

    member this.Set(key, value) =
        this.Set(key, Unchecked.defaultof<_>, value)

    member this.TryGet(key) =
        this.TryGet(key, Unchecked.defaultof<_>)

    member this.Remove(key) =
        this.Remove(key, Unchecked.defaultof<_>)

    member _.Clear() =
        dictionary.Clear()
        strongList.Clear()
        weakList.Clear()

    member _.GetValues() =
        strongList
        |> Seq.append weakList
        |> Seq.choose (function
            | _k, version, label, Strong value -> Some(label, version, value)
            | _k, version, label, Weak w ->
                match w.TryGetTarget() with
                | true, value -> Some(label, version, value)
                | _ -> None)
