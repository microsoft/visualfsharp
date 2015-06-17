﻿// Copyright (c) Microsoft Open Technologies, Inc.  All Rights Reserved.  Licensed under the Apache License, Version 2.0.  See License.txt in the project root for license information.

module FSharp.Core.PropertyTests.CollectionModulesConsistency

open System
open System.Collections.Generic

open NUnit.Framework
open FsCheck
open Utils

let append<'a when 'a : equality> (xs : list<'a>) (xs2 : list<'a>) =
    let s = xs |> Seq.append xs2 
    let l = xs |> List.append xs2
    let a = xs |> Seq.toArray |> Array.append (Seq.toArray xs2)
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``append is consistent`` () =
    Check.QuickThrowOnFailure append<int>
    Check.QuickThrowOnFailure append<string>
    Check.QuickThrowOnFailure append<NormalFloat>

let averageFloat (xs : NormalFloat []) =
    let xs = xs |> Array.map float
    let s = run (fun () -> xs |> Seq.average)
    let l = run (fun () -> xs |> List.ofArray |> List.average)
    let a = run (fun () -> xs |> Array.average)
    s = a && l = a

[<Test>]
let ``average is consistent`` () =
    Check.QuickThrowOnFailure averageFloat

let averageBy (xs : float []) f =
    let xs = xs |> Array.map float
    let f x = (f x : NormalFloat) |> float
    let s = run (fun () -> xs |> Seq.averageBy f)
    let l = run (fun () -> xs |> List.ofArray |> List.averageBy f)
    let a = run (fun () -> xs |> Array.averageBy f)
    s = a && l = a

[<Test>]
let ``averageBy is consistent`` () =
    Check.QuickThrowOnFailure averageBy

let contains<'a when 'a : equality> (xs : 'a []) x  =
    let s = xs |> Seq.contains x
    let l = xs |> List.ofArray |> List.contains x
    let a = xs |> Array.contains x
    s = a && l = a

[<Test>]
let ``contains is consistent`` () =
    Check.QuickThrowOnFailure contains<int>
    Check.QuickThrowOnFailure contains<string>
    Check.QuickThrowOnFailure contains<float>

let choose<'a when 'a : equality> (xs : 'a []) f  =
    let s = xs |> Seq.choose f
    let l = xs |> List.ofArray |> List.choose f
    let a = xs |> Array.choose f
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``choose is consistent`` () =
    Check.QuickThrowOnFailure contains<int>
    Check.QuickThrowOnFailure contains<string>
    Check.QuickThrowOnFailure contains<float>

let chunkBySize<'a when 'a : equality> (xs : 'a []) size =
    let s = run (fun () -> xs |> Seq.chunkBySize size |> Seq.map Seq.toArray |> Seq.toArray)
    let l = run (fun () -> xs |> List.ofArray |> List.chunkBySize size |> Seq.map Seq.toArray |> Seq.toArray)
    let a = run (fun () -> xs |> Array.chunkBySize size |> Seq.map Seq.toArray |> Seq.toArray)
    s = a && l = a

[<Test>]
let ``chunkBySize is consistent`` () =
    Check.QuickThrowOnFailure chunkBySize<int>
    Check.QuickThrowOnFailure chunkBySize<string>
    Check.QuickThrowOnFailure chunkBySize<NormalFloat>

let collect<'a> (xs : 'a []) f  =
    let s = xs |> Seq.collect f
    let l = xs |> List.ofArray |> List.collect (fun x -> f x |> List.ofArray)
    let a = xs |> Array.collect f
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``collect is consistent`` () =
    Check.QuickThrowOnFailure collect<int>
    Check.QuickThrowOnFailure collect<string>
    Check.QuickThrowOnFailure collect<float>

let compareWith<'a>(xs : 'a []) (xs2 : 'a []) f  =
    let s = (xs, xs2) ||> Seq.compareWith f
    let l = (List.ofArray xs, List.ofArray xs2) ||> List.compareWith f
    let a = (xs, xs2) ||> Array.compareWith f
    s = a && l = a

[<Test>]
let ``compareWith is consistent`` () =
    Check.QuickThrowOnFailure compareWith<int>
    Check.QuickThrowOnFailure compareWith<string>
    Check.QuickThrowOnFailure compareWith<float>
        
let concat<'a when 'a : equality> (xs : 'a [][]) =
    let s = xs |> Seq.concat
    let l = xs |> List.ofArray |> List.map List.ofArray |> List.concat
    let a = xs |> Array.concat
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``concat is consistent`` () =
    Check.QuickThrowOnFailure concat<int>
    Check.QuickThrowOnFailure concat<string>
    Check.QuickThrowOnFailure concat<NormalFloat>

let countBy<'a> (xs : 'a []) f =
    let s = xs |> Seq.countBy f
    let l = xs |> List.ofArray |> List.countBy f
    let a = xs |> Array.countBy f
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``countBy is consistent`` () =
    Check.QuickThrowOnFailure countBy<int>
    Check.QuickThrowOnFailure countBy<string>
    Check.QuickThrowOnFailure countBy<float>

let distinct<'a when 'a : comparison> (xs : 'a []) =
    let s = xs |> Seq.distinct 
    let l = xs |> List.ofArray |> List.distinct
    let a = xs |> Array.distinct
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``distinct is consistent`` () =
    Check.QuickThrowOnFailure distinct<int>
    Check.QuickThrowOnFailure distinct<string>
    Check.QuickThrowOnFailure distinct<NormalFloat>

let distinctBy<'a when 'a : equality> (xs : 'a []) f =
    let s = xs |> Seq.distinctBy f
    let l = xs |> List.ofArray |> List.distinctBy f
    let a = xs |> Array.distinctBy f
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``distinctBy is consistent`` () =
    Check.QuickThrowOnFailure distinctBy<int>
    Check.QuickThrowOnFailure distinctBy<string>
    Check.QuickThrowOnFailure distinctBy<NormalFloat>

let exactlyOne<'a when 'a : comparison> (xs : 'a []) =
    let s = runAndCheckErrorType (fun () -> xs |> Seq.exactlyOne)
    let l = runAndCheckErrorType (fun () -> xs |> List.ofArray |> List.exactlyOne)
    let a = runAndCheckErrorType (fun () -> xs |> Array.exactlyOne)
    s = a && l = a

[<Test>]
let ``exactlyOne is consistent`` () =
    Check.QuickThrowOnFailure exactlyOne<int>
    Check.QuickThrowOnFailure exactlyOne<string>
    Check.QuickThrowOnFailure exactlyOne<NormalFloat>

let except<'a when 'a : equality> (xs : 'a []) (itemsToExclude: 'a []) =
    let s = xs |> Seq.except itemsToExclude
    let l = xs |> List.ofArray |> List.except itemsToExclude
    let a = xs |> Array.except itemsToExclude
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``except is consistent`` () =
    Check.QuickThrowOnFailure except<int>
    Check.QuickThrowOnFailure except<string>
    Check.QuickThrowOnFailure except<NormalFloat>

let exists<'a when 'a : equality> (xs : 'a []) f =
    let s = xs |> Seq.exists f
    let l = xs |> List.ofArray |> List.exists f
    let a = xs |> Array.exists f
    s = a && l = a

[<Test>]
let ``exists is consistent`` () =
    Check.QuickThrowOnFailure exists<int>
    Check.QuickThrowOnFailure exists<string>
    Check.QuickThrowOnFailure exists<NormalFloat>

let exists2<'a when 'a : equality> (xs':('a*'a) []) f =    
    let xs = Array.map fst xs'
    let xs2 = Array.map snd xs'
    let s = runAndCheckErrorType (fun () -> Seq.exists2 f xs xs2)
    let l = runAndCheckErrorType (fun () -> List.exists2 f (List.ofSeq xs) (List.ofSeq xs2))
    let a = runAndCheckErrorType (fun () -> Array.exists2 f (Array.ofSeq xs) (Array.ofSeq xs2))
    s = a && l = a
    
[<Test>]
let ``exists2 is consistent for collections with equal length`` () =
    Check.QuickThrowOnFailure exists2<int>
    Check.QuickThrowOnFailure exists2<string>
    Check.QuickThrowOnFailure exists2<NormalFloat>

let filter<'a when 'a : equality> (xs : 'a []) predicate =
    let s = xs |> Seq.filter predicate
    let l = xs |> List.ofArray |> List.filter predicate
    let a = xs |> Array.filter predicate
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``filter is consistent`` () =
    Check.QuickThrowOnFailure filter<int>
    Check.QuickThrowOnFailure filter<string>
    Check.QuickThrowOnFailure filter<NormalFloat>

let find<'a when 'a : equality> (xs : 'a []) predicate =
    let s = run (fun () -> xs |> Seq.find predicate)
    let l = run (fun () -> xs |> List.ofArray |> List.find predicate)
    let a = run (fun () -> xs |> Array.find predicate)
    s = a && l = a

[<Test>]
let ``find is consistent`` () =
    Check.QuickThrowOnFailure find<int>
    Check.QuickThrowOnFailure find<string>
    Check.QuickThrowOnFailure find<NormalFloat>

let findBack<'a when 'a : equality> (xs : 'a []) predicate =
    let s = run (fun () -> xs |> Seq.findBack predicate)
    let l = run (fun () -> xs |> List.ofArray |> List.findBack predicate)
    let a = run (fun () -> xs |> Array.findBack predicate)
    s = a && l = a

[<Test>]
let ``findBack is consistent`` () =
    Check.QuickThrowOnFailure findBack<int>
    Check.QuickThrowOnFailure findBack<string>
    Check.QuickThrowOnFailure findBack<NormalFloat>

let findIndex<'a when 'a : equality> (xs : 'a []) predicate =
    let s = run (fun () -> xs |> Seq.findIndex predicate)
    let l = run (fun () -> xs |> List.ofArray |> List.findIndex predicate)
    let a = run (fun () -> xs |> Array.findIndex predicate)
    s = a && l = a

[<Test>]
let ``findIndex is consistent`` () =
    Check.QuickThrowOnFailure findIndex<int>
    Check.QuickThrowOnFailure findIndex<string>
    Check.QuickThrowOnFailure findIndex<NormalFloat>

let findIndexBack<'a when 'a : equality> (xs : 'a []) predicate =
    let s = run (fun () -> xs |> Seq.findIndexBack predicate)
    let l = run (fun () -> xs |> List.ofArray |> List.findIndexBack predicate)
    let a = run (fun () -> xs |> Array.findIndexBack predicate)
    s = a && l = a

[<Test>]
let ``findIndexBack is consistent`` () =
    Check.QuickThrowOnFailure findIndexBack<int>
    Check.QuickThrowOnFailure findIndexBack<string>
    Check.QuickThrowOnFailure findIndexBack<NormalFloat>

let fold<'a,'b when 'b : equality> (xs : 'a []) f (start:'b) =
    let s = run (fun () -> xs |> Seq.fold f start)
    let l = run (fun () -> xs |> List.ofArray |> List.fold f start)
    let a = run (fun () -> xs |> Array.fold f start)
    s = a && l = a

[<Test>]
let ``fold is consistent`` () =
    Check.QuickThrowOnFailure fold<int,int>
    Check.QuickThrowOnFailure fold<string,string>
    Check.QuickThrowOnFailure fold<float,int>
    Check.QuickThrowOnFailure fold<float,string>

let fold2<'a,'b,'c when 'c : equality> (xs': ('a*'b)[]) f (start:'c) =
    let xs = xs' |> Array.map fst
    let xs2 = xs' |> Array.map snd
    let s = run (fun () -> Seq.fold2 f start xs xs2)
    let l = run (fun () -> List.fold2 f start (List.ofArray xs) (List.ofArray xs2))
    let a = run (fun () -> Array.fold2 f start xs xs2)
    s = a && l = a

[<Test>]
let ``fold2 is consistent`` () =
    Check.QuickThrowOnFailure fold2<int,int,int>
    Check.QuickThrowOnFailure fold2<string,string,string>
    Check.QuickThrowOnFailure fold2<string,int,string>
    Check.QuickThrowOnFailure fold2<string,float,int>
    Check.QuickThrowOnFailure fold2<float,float,int>
    Check.QuickThrowOnFailure fold2<float,float,string>

let foldBack<'a,'b when 'b : equality> (xs : 'a []) f (start:'b) =
    let s = run (fun () -> Seq.foldBack f xs start)
    let l = run (fun () -> List.foldBack f (xs |> List.ofArray) start)
    let a = run (fun () -> Array.foldBack f xs start)
    s = a && l = a

[<Test>]
let ``foldBack is consistent`` () =
    Check.QuickThrowOnFailure foldBack<int,int>
    Check.QuickThrowOnFailure foldBack<string,string>
    Check.QuickThrowOnFailure foldBack<float,int>
    Check.QuickThrowOnFailure foldBack<float,string>

let foldBack2<'a,'b,'c when 'c : equality> (xs': ('a*'b)[]) f (start:'c) =
    let xs = xs' |> Array.map fst
    let xs2 = xs' |> Array.map snd
    let s = run (fun () -> Seq.foldBack2 f xs xs2 start)
    let l = run (fun () -> List.foldBack2 f (List.ofArray xs) (List.ofArray xs2) start)
    let a = run (fun () -> Array.foldBack2 f xs xs2 start)
    s = a && l = a

[<Test>]
let ``foldBack2 is consistent`` () =
    Check.QuickThrowOnFailure foldBack2<int,int,int>
    Check.QuickThrowOnFailure foldBack2<string,string,string>
    Check.QuickThrowOnFailure foldBack2<string,int,string>
    Check.QuickThrowOnFailure foldBack2<string,float,int>
    Check.QuickThrowOnFailure foldBack2<float,float,int>
    Check.QuickThrowOnFailure foldBack2<float,float,string>

let indexed<'a when 'a : equality> (xs : 'a []) =
    let s = xs |> Seq.indexed
    let l = xs |> List.ofArray |> List.indexed
    let a = xs |> Array.indexed
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``indexed is consistent`` () =
    Check.QuickThrowOnFailure indexed<int>
    Check.QuickThrowOnFailure indexed<string>
    Check.QuickThrowOnFailure indexed<NormalFloat>

let item<'a when 'a : equality> (xs : 'a []) index =
    let s = runAndCheckIfAnyError (fun () -> xs |> Seq.item index)
    let l = runAndCheckIfAnyError (fun () -> xs |> List.ofArray |> List.item index)
    let a = runAndCheckIfAnyError (fun () -> xs |> Array.item index)
    s = a && l = a

[<Test>]
let ``item is consistent`` () =
    Check.QuickThrowOnFailure item<int>
    Check.QuickThrowOnFailure item<string>
    Check.QuickThrowOnFailure item<NormalFloat>

let sort<'a when 'a : comparison> (xs : 'a []) =
    let s = xs |> Seq.sort 
    let l = xs |> List.ofArray |> List.sort
    let a = xs |> Array.sort
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``sort is consistent`` () =
    Check.QuickThrowOnFailure sort<int>
    Check.QuickThrowOnFailure sort<string>
    Check.QuickThrowOnFailure sort<NormalFloat>

let sortDescending<'a when 'a : comparison> (xs : 'a []) =
    let s = xs |> Seq.sortDescending 
    let l = xs |> List.ofArray |> List.sortDescending
    let a = xs |> Array.sortDescending
    Seq.toArray s = a && List.toArray l = a

[<Test>]
let ``sortDescending is consistent`` () =
    Check.QuickThrowOnFailure sortDescending<int>
    Check.QuickThrowOnFailure sortDescending<string>
    Check.QuickThrowOnFailure sortDescending<NormalFloat>

let splitInto<'a when 'a : equality> (xs : 'a []) count =
    let s = run (fun () -> xs |> Seq.splitInto count |> Seq.map Seq.toArray |> Seq.toArray)
    let l = run (fun () -> xs |> List.ofArray |> List.splitInto count |> Seq.map Seq.toArray |> Seq.toArray)
    let a = run (fun () -> xs |> Array.splitInto count |> Seq.map Seq.toArray |> Seq.toArray)
    s = a && l = a

[<Test>]
let ``splitInto is consistent`` () =
    Check.QuickThrowOnFailure splitInto<int>
    Check.QuickThrowOnFailure splitInto<string>
    Check.QuickThrowOnFailure splitInto<NormalFloat>