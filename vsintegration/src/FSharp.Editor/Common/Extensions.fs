﻿// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.
[<AutoOpen>]
/// Type and Module Extensions
module internal Microsoft.VisualStudio.FSharp.Editor.Extensions

open System
open System.IO
open System.Collections.Immutable
open System.Threading
open System.Threading.Tasks

open Microsoft.CodeAnalysis
open Microsoft.CodeAnalysis.Text
open Microsoft.CodeAnalysis.Host

open FSharp.Compiler.EditorServices
open FSharp.Compiler.Syntax
open FSharp.Compiler.Text

open Microsoft.VisualStudio.FSharp.Editor

type private FSharpGlyph = FSharp.Compiler.EditorServices.FSharpGlyph
type private FSharpRoslynGlyph = Microsoft.CodeAnalysis.ExternalAccess.FSharp.FSharpGlyph

type Path with

    static member GetFullPathSafe path =
        try
            Path.GetFullPath path
        with _ ->
            path

    static member GetFileNameSafe path =
        try
            Path.GetFileName path
        with _ ->
            path

type System.IServiceProvider with

    member x.GetService<'T>() = x.GetService(typeof<'T>) :?> 'T
    member x.GetService<'S, 'T>() = x.GetService(typeof<'S>) :?> 'T

type ProjectId with

    member this.ToFSharpProjectIdString() =
        this.Id.ToString("D").ToLowerInvariant()

type Project with

    member this.IsFSharpMiscellaneous =
        this.Name = FSharpConstants.FSharpMiscellaneousFilesName

    member this.IsFSharpMetadata = this.Name.StartsWith(FSharpConstants.FSharpMetadataName)

    member this.IsFSharpMiscellaneousOrMetadata =
        this.IsFSharpMiscellaneous || this.IsFSharpMetadata

    member this.IsFSharp = this.Language = LanguageNames.FSharp

type Document with

    member this.TryGetLanguageService<'T when 'T :> ILanguageService>() =
        match this.Project with
        | null -> None
        | project ->
            match project.LanguageServices with
            | null -> None
            | languageServices -> languageServices.GetService<'T>() |> Some

    member this.IsFSharpScript = isScriptFile this.FilePath

    member this.IsFSharpSignatureFile = isSignatureFile this.FilePath

module private SourceText =
    let create version (sourceText: SourceText) =
        { new Object() with
            override _.GetHashCode() = version
          interface ISourceText with

              member _.Item
                  with get index = sourceText.[index]

              member _.GetLineString(lineIndex) = sourceText.Lines.[lineIndex].ToString()

              member _.GetLineCount() = sourceText.Lines.Count

              member _.GetLastCharacterPosition() =
                  if sourceText.Lines.Count > 0 then
                      (sourceText.Lines.Count, sourceText.Lines.[sourceText.Lines.Count - 1].Span.Length)
                  else
                      (0, 0)

              member _.GetSubTextString(start, length) =
                  sourceText.GetSubText(TextSpan(start, length)).ToString()

              member _.SubTextEquals(target, startIndex) =
                  if startIndex < 0 || startIndex >= sourceText.Length then
                      invalidArg "startIndex" "Out of range."

                  if String.IsNullOrEmpty(target) then
                      invalidArg "target" "Is null or empty."

                  let lastIndex = startIndex + target.Length

                  if lastIndex <= startIndex || lastIndex >= sourceText.Length then
                      invalidArg "target" "Too big."

                  let mutable finished = false
                  let mutable didEqual = true
                  let mutable i = 0

                  while not finished && i < target.Length do
                      if target.[i] <> sourceText.[startIndex + i] then
                          didEqual <- false
                          finished <- true // bail out early
                      else
                          i <- i + 1

                  didEqual

              member _.ContentEquals(sourceText) =
                  match sourceText with
                  | :? SourceText as sourceText -> sourceText.ContentEquals(sourceText)
                  | _ -> false

              member _.Length = sourceText.Length

              member _.CopyTo(sourceIndex, destination, destinationIndex, count) =
                  sourceText.CopyTo(sourceIndex, destination, destinationIndex, count)
        }

type SourceText with

    member this.ToFSharpSourceText(version) = SourceText.create version this

    member this.ToFSharpSourceTextWithoutVersion() =
        // To ensure no conflicts with versioned SourceTexts, we increment VersionStamp globally.
        let version = VersionStamp.Create(DateTime.UtcNow).ToString().GetHashCode()
        SourceText.create version this

type Document with

    member this.GetFSharpSourceText() =
        async {
            let! ct = Async.CancellationToken

            let! version = this.GetTextVersionAsync(ct) |> Async.AwaitTask
            // VersionStamp.GetHashCode() is surprisingly weak, as it gets into account only creation time and local increment,
            // which leads to collisions in CI testing, where the increment is 0.
            // That's why we do ToString() first, which gives us a globally (per-session) deconflicted value.
            let versionHash = version.ToString().GetHashCode()

            let! text = this.GetTextAsync(ct) |> Async.AwaitTask
            return text.ToFSharpSourceText(versionHash)
        }

type NavigationItem with

    member x.RoslynGlyph: FSharpRoslynGlyph =
        match x.Glyph with
        | FSharpGlyph.Class
        | FSharpGlyph.Typedef
        | FSharpGlyph.Type
        | FSharpGlyph.Exception ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.ClassPrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.ClassInternal
            | _ -> FSharpRoslynGlyph.ClassPublic
        | FSharpGlyph.Constant ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.ConstantPrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.ConstantInternal
            | _ -> FSharpRoslynGlyph.ConstantPublic
        | FSharpGlyph.Delegate ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.DelegatePrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.DelegateInternal
            | _ -> FSharpRoslynGlyph.DelegatePublic
        | FSharpGlyph.Union
        | FSharpGlyph.Enum ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.EnumPrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.EnumInternal
            | _ -> FSharpRoslynGlyph.EnumPublic
        | FSharpGlyph.EnumMember
        | FSharpGlyph.Variable
        | FSharpGlyph.Field ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.FieldPrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.FieldInternal
            | _ -> FSharpRoslynGlyph.FieldPublic
        | FSharpGlyph.Event ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.EventPrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.EventInternal
            | _ -> FSharpRoslynGlyph.EventPublic
        | FSharpGlyph.Interface ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.InterfacePrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.InterfaceInternal
            | _ -> FSharpRoslynGlyph.InterfacePublic
        | FSharpGlyph.Method
        | FSharpGlyph.OverridenMethod ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.MethodPrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.MethodInternal
            | _ -> FSharpRoslynGlyph.MethodPublic
        | FSharpGlyph.Module ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.ModulePrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.ModuleInternal
            | _ -> FSharpRoslynGlyph.ModulePublic
        | FSharpGlyph.NameSpace -> FSharpRoslynGlyph.Namespace
        | FSharpGlyph.Property ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.PropertyPrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.PropertyInternal
            | _ -> FSharpRoslynGlyph.PropertyPublic
        | FSharpGlyph.Struct ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.StructurePrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.StructureInternal
            | _ -> FSharpRoslynGlyph.StructurePublic
        | FSharpGlyph.ExtensionMethod ->
            match x.Access with
            | Some (SynAccess.Private _) -> FSharpRoslynGlyph.ExtensionMethodPrivate
            | Some (SynAccess.Internal _) -> FSharpRoslynGlyph.ExtensionMethodInternal
            | _ -> FSharpRoslynGlyph.ExtensionMethodPublic
        | FSharpGlyph.Error -> FSharpRoslynGlyph.Error
        | FSharpGlyph.TypeParameter -> FSharpRoslynGlyph.TypeParameter

[<RequireQualifiedAccess>]
module String =

    let getLines (str: string) =
        use reader = new StringReader(str)

        [|
            let mutable line = reader.ReadLine()

            while not (isNull line) do
                yield line
                line <- reader.ReadLine()

            if str.EndsWith("\n") then
                // last trailing space not returned
                // http://stackoverflow.com/questions/19365404/stringreader-omits-trailing-linebreak
                yield String.Empty
        |]

[<RequireQualifiedAccess>]
module Option =

    let guard (x: bool) : Option<unit> = if x then Some() else None

    let attempt (f: unit -> 'T) =
        try
            Some <| f ()
        with _ ->
            None

    /// Returns 'Some list' if all elements in the list are Some, otherwise None
    let ofOptionList (xs: 'a option list) : 'a list option =

        if xs |> List.forall Option.isSome then
            xs |> List.map Option.get |> Some
        else
            None

[<RequireQualifiedAccess>]
module Seq =

    let toImmutableArray (xs: seq<'a>) : ImmutableArray<'a> = xs.ToImmutableArray()

[<RequireQualifiedAccess>]
module Array =
    let foldi (folder: 'State -> int -> 'T -> 'State) (state: 'State) (xs: 'T[]) =
        let mutable state = state
        let mutable i = 0

        for x in xs do
            state <- folder state i x
            i <- i + 1

        state

    let toImmutableArray (xs: 'T[]) = xs.ToImmutableArray()

[<RequireQualifiedAccess>]
module Exception =

    /// Returns a flattened string of the exception's message and all of its inner exception
    /// messages recursively.
    let flattenMessage (root: System.Exception) =

        let rec flattenInner (exc: System.Exception) =
            match exc with
            | null -> []
            | _ -> [ exc.Message ] @ (flattenInner exc.InnerException)

        // If an aggregate exception only has a single inner exception, use that as the root
        match root with
        | :? AggregateException as agg ->
            if agg.InnerExceptions.Count = 1 then
                agg.InnerExceptions.[0]
            else
                agg :> exn
        | _ -> root
        |> flattenInner
        |> String.concat " ---> "

type Async with

    static member RunImmediateExceptOnUI(computation: Async<'T>, ?cancellationToken) =
        match SynchronizationContext.Current with
        | null ->
            let cancellationToken = defaultArg cancellationToken Async.DefaultCancellationToken
            let ts = TaskCompletionSource<'T>()
            let task = ts.Task

            Async.StartWithContinuations(
                computation,
                (fun k -> ts.SetResult k),
                (fun exn -> ts.SetException exn),
                (fun _ -> ts.SetCanceled()),
                cancellationToken
            )

            task.Result
        | _ -> Async.RunSynchronously(computation, ?cancellationToken = cancellationToken)
