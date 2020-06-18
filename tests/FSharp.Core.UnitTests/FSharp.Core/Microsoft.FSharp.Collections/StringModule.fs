// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace FSharp.Core.UnitTests.Collections

open System
open NUnit.Framework

open FSharp.Core.UnitTests.LibraryTestFx

// Various tests for the:
// Microsoft.FSharp.Collections.seq type

(*
[Test Strategy]
Make sure each method works on:
* Few charachter string ("foo")
* Empty string   ("")
* Null string (null)
*)

[<TestFixture>]
type StringModule() =

    [<Test>]
    member this.Concat() =
        let e1 = String.concat null ["foo"]
        Assert.AreEqual("foo", e1)
        
        let e2 = String.concat "" []
        Assert.AreEqual("", e2)
        
        let e3 = String.concat "foo" []
        Assert.AreEqual("", e3)        
        
        let e4 = String.concat "" [null]
        Assert.AreEqual("", e4)
        
        let e5 = String.concat "" [""]
        Assert.AreEqual("", e5)
        
        let e6 = String.concat "foo" ["bar"]
        Assert.AreEqual("bar", e6)
        
        let e7 = String.concat "foo" ["bav";"baz"]
        Assert.AreEqual("bavfoobaz", e7)

        let e8 = String.concat "foo" [null;"baz";null;"bar"]
        Assert.AreEqual("foobazfoofoobar", e8)
        
        CheckThrowsArgumentNullException(fun () -> String.concat "foo" null |> ignore)

    [<Test>]
    member this.Iter() =
        let result = ref 0
        do String.iter (fun c -> result := !result + (int c)) "foo"
        Assert.AreEqual(324, !result)

        do result := 0
        do String.iter (fun c -> result := !result + (int c)) null
        Assert.AreEqual(0, !result)

    [<Test>]
    member this.IterI() =
        let result = ref 0
        do String.iteri(fun i c -> result := !result + (i*(int c))) "foo"
        Assert.AreEqual(333, !result)

        result := 0
        do String.iteri(fun i c -> result := !result + (i*(int c))) null
        Assert.AreEqual(0, !result)

    [<Test>]
    member this.Map() =
        let e1 = String.map (fun c -> c) "foo"
        Assert.AreEqual("foo", e1)

        let e2 = String.map (fun c -> c) null 
        Assert.AreEqual("", e2)

    [<Test>]
    member this.MapI() =
        let e1 = String.mapi (fun _ c -> c) "12345"
        Assert.AreEqual("12345", e1)

        let e2 = String.mapi (fun _ c -> c + char 1) "1"
        Assert.AreEqual("2", e2)

        let e3 = String.mapi (fun _ c -> c + char 1) "AB"
        Assert.AreEqual("BC", e3)

        let e4 = String.mapi (fun i c -> char(int c + i)) "foo"
        Assert.AreEqual("fpq", e4)

        let e5 = String.mapi (fun _ c -> c) null 
        Assert.AreEqual("", e5)

        let e6 = String.mapi (fun _ c -> c) String.Empty 
        Assert.AreEqual("", e6)

        let e7 = String.mapi (fun _ _ -> failwith "should not fail") null 
        Assert.AreEqual("", e7)

        let e8 = String.mapi (fun i _ -> if i = 1 then failwith "should not fail" else char i) "X" 
        Assert.AreEqual("\u0000", e8)

    [<Test>]
    member this.Filter() =
        let e1 = String.filter (fun c -> true) "foo"
        Assert.AreEqual("foo", e1)

        let e2 = String.filter (fun c -> true) null 
        Assert.AreEqual("", e2)

        let e3 = String.filter (fun c -> c <> 'o') "foo bar"
        Assert.AreEqual("f bar", e3)

        let e4 = String.filter (fun c -> c <> 'o') ""
        Assert.AreEqual("", e4)

    [<Test>]
    member this.Collect() =
        let e1 = String.collect (fun c -> "a"+string c) "foo"
        Assert.AreEqual("afaoao", e1)

        let e2 = String.collect (fun c -> null) "hello"
        Assert.AreEqual("", e2)

        let e3 = String.collect (fun c -> "") null 
        Assert.AreEqual("", e3)

    [<Test>]
    member this.Init() =
        let e1 = String.init 0 (fun i -> "foo")
        Assert.AreEqual("", e1)

        let e2 = String.init 2 (fun i -> "foo"+string(i))
        Assert.AreEqual("foo0foo1", e2)

        let e3 = String.init 2 (fun i -> null)
        Assert.AreEqual("", e3)

        CheckThrowsArgumentException(fun () -> String.init -1 (fun c -> "") |> ignore)

    [<Test>]
    member this.Replicate() = 
        let e1 = String.replicate 0 "foo"
        Assert.AreEqual("", e1)

        let e2 = String.replicate 2 "foo"
        Assert.AreEqual("foofoo", e2)

        let e3 = String.replicate 2 null
        Assert.AreEqual("", e3)

        CheckThrowsArgumentException(fun () -> String.replicate -1 "foo" |> ignore)

    [<Test>]
    member this.Forall() = 
        let e1 = String.forall (fun c -> true) ""
        Assert.AreEqual(true, e1)

        let e2 = String.forall (fun c -> c='o') "foo"
        Assert.AreEqual(false, e2)

        let e3 = String.forall (fun c -> true) "foo"
        Assert.AreEqual(true, e3)

        let e4 = String.forall (fun c -> false) "foo"
        Assert.AreEqual(false, e4)

        let e5 = String.forall (fun c -> true) (String.replicate 1000000 "x")
        Assert.AreEqual(true, e5)

        let e6 = String.forall (fun c -> false) null 
        Assert.AreEqual(true, e6)

    [<Test>]
    member this.Exists() = 
        let e1 = String.exists (fun c -> true) ""
        Assert.AreEqual(false, e1)

        let e2 = String.exists (fun c -> c='o') "foo"
        Assert.AreEqual(true, e2)

        let e3 = String.exists (fun c -> true) "foo"
        Assert.AreEqual(true, e3)

        let e4 = String.exists (fun c -> false) "foo"
        Assert.AreEqual(false, e4)

        let e5 = String.exists (fun c -> false) (String.replicate 1000000 "x")
        Assert.AreEqual(false, e5)

    [<Test>]
    member this.Length() = 
        let e1 = String.length ""
        Assert.AreEqual(0, e1)

        let e2 = String.length "foo"
        Assert.AreEqual(3, e2)

        let e3 = String.length null
        Assert.AreEqual(0, e3)

    [<Test>]
    member this.``Slicing with both index reverse behaves as expected``()  = 
        let str = "abcde"

        Assert.That(str.[^3..^1], Is.EquivalentTo(str.[1..3]))

    [<Test>]
    member this.``Indexer with reverse index behaves as expected``() =
        let str = "abcde"

        Assert.That(str.[^1], Is.EqualTo('d'))

    [<Test>] 
    member this.SlicingUnboundedEnd() = 
        let str = "123456"

        Assert.AreEqual(str.[-1..], str)
        Assert.AreEqual(str.[0..], str)
        Assert.AreEqual(str.[1..], "23456")
        Assert.AreEqual(str.[2..], "3456")
        Assert.AreEqual(str.[5..], "6")
        Assert.AreEqual(str.[6..], (""))
        Assert.AreEqual(str.[7..], (""))

    
    [<Test>] 
    member this.SlicingUnboundedStart() = 
        let str = "123456"

        Assert.AreEqual(str.[..(-1)], (""))
        Assert.AreEqual(str.[..0], "1")
        Assert.AreEqual(str.[..1], "12")
        Assert.AreEqual(str.[..2], "123")
        Assert.AreEqual(str.[..3], "1234")
        Assert.AreEqual(str.[..4], "12345")
        Assert.AreEqual(str.[..5], "123456")
        Assert.AreEqual(str.[..6], "123456")
        Assert.AreEqual(str.[..7], "123456")


    [<Test>]
    member this.SlicingBoundedStartEnd() =
        let str = "123456"

        Assert.AreEqual(str.[*], str)

        Assert.AreEqual(str.[0..0], "1")
        Assert.AreEqual(str.[0..1], "12")
        Assert.AreEqual(str.[0..2], "123")
        Assert.AreEqual(str.[0..3], "1234")
        Assert.AreEqual(str.[0..4], "12345")
        Assert.AreEqual(str.[0..5], "123456")

        Assert.AreEqual(str.[1..1], "2")
        Assert.AreEqual(str.[1..2], "23")
        Assert.AreEqual(str.[1..3], "234")
        Assert.AreEqual(str.[1..4], "2345")
        Assert.AreEqual(str.[1..5], "23456")

        Assert.AreEqual(str.[0..1], "12")
        Assert.AreEqual(str.[1..1], "2")
        Assert.AreEqual(str.[2..1], (""))
        Assert.AreEqual(str.[3..1], (""))
        Assert.AreEqual(str.[4..1], (""))


    [<Test>]
    member this.SlicingEmptyString() = 

        let empty = ""
        Assert.AreEqual(empty.[*], (""))
        Assert.AreEqual(empty.[5..3], (""))
        Assert.AreEqual(empty.[0..], (""))
        Assert.AreEqual(empty.[0..0], (""))
        Assert.AreEqual(empty.[0..1], (""))
        Assert.AreEqual(empty.[3..5], (""))


    [<Test>]
    member this.SlicingOutOfBounds() = 
        let str = "123456"
       
        Assert.AreEqual(str.[..6], "123456")
        Assert.AreEqual(str.[6..], (""))

        Assert.AreEqual(str.[0..(-1)], (""))
        Assert.AreEqual(str.[1..(-1)], (""))
        Assert.AreEqual(str.[1..0], (""))
        Assert.AreEqual(str.[0..6], "123456")
        Assert.AreEqual(str.[1..6], "23456")

        Assert.AreEqual(str.[-1..1], "12")
        Assert.AreEqual(str.[-3..(-4)], (""))
        Assert.AreEqual(str.[-4..(-3)], (""))

