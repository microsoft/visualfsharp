﻿module FSharp.Compiler.Service.Tests2.TestASTVisit

open NUnit.Framework
open FSharp.Compiler.Service.Tests
open FSharp.Compiler.Service.Tests2.ASTVisit

[<Test>]
let ``Single SynEnumCase contains range of constant`` () =
    let parseResults = 
        getParseResults
            """

module A1 = let a = 3
module A2 = let a = 3
module A3 = let a = 3
module A4 =
    
    type AAttribute(name : string) =
        inherit System.Attribute()
    
    let a = 3
    module A1 =
        let a = 3
    type X = int * int
    type Y = Y of int

module B =
    open A2
    let b = [|
        A1.a
        A2.a
        A3.a
    |]
    let c : A4.X = 2,2
    [<A4.A("name")>]
    let d : A4.Y = A4.Y 2
    type Z =
        {
            X : A4.X
            Y : A4.Y
        }

let c = A4.a
let d = A4.A1.a
open A4
let e = A1.a
open A1
let f = a
"""

    let stuff = visit parseResults
    let top = topModuleOrNamespaces parseResults
    printfn $"%+A{top}"
    printfn $"%+A{stuff}"
    ()

[<Test>]
let ``Test two`` () =
    
    let A =
        """
module A
open B
let x = B.x
"""
    let B =
        """
module B
let x = 3
"""
    
    let parsedA = parseSourceCode("A.fs", A)
    let visitedA = visit parsedA
    let parsedB = parseSourceCode("B.fs", B)
    let topB = topModuleOrNamespaces parsedB
    printfn $"Top B: %+A{topB}"
    printfn $"A refs: %+A{visitedA}"
    ()


[<Test>]
let ``Test big`` () =
    let code = System.IO.File.ReadAllText("Big.fs")
    let parsedA = getParseResults code
    let visitedA = visit parsedA
    printfn $"A refs: %+A{visitedA}"
