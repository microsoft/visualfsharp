﻿module FSharp.Editor.Tests.Refactors.AddExplicitReturnType

open Microsoft.VisualStudio.FSharp.Editor
open Xunit
open System
open System.Collections.Immutable
open System.Text.RegularExpressions

open Microsoft.CodeAnalysis
open Microsoft.CodeAnalysis.CodeFixes
open Microsoft.CodeAnalysis.Text
open Microsoft.VisualStudio.FSharp.Editor
open Microsoft.VisualStudio.FSharp.Editor.CancellableTasks

open FSharp.Compiler.Diagnostics
open FSharp.Editor.Tests.Helpers

open Microsoft.CodeAnalysis.CodeRefactorings
open NUnit.Framework
open Microsoft.CodeAnalysis.CodeActions
open System.Collections.Generic
open Microsoft.VisualStudio.LanguageServices
open FSharp.Editor.Tests.Refactors.RefactorTestFramework
open Microsoft.Build.Utilities
open System.Threading
open FSharp.Test.ReflectionHelper
open Microsoft.Build.Utilities
open FSharp.Test.ProjectGeneration.ProjectOperations
open FSharp.Compiler.Symbols
open Xunit
open System.Runtime.InteropServices

[<Theory>]
[<InlineData(":int")>]
[<InlineData(" :int")>]
[<InlineData(" : int")>]
[<InlineData(" :    int")>]
let ``Refactor changes nothing`` (shouldNotTrigger: string) =
    task {

        let code =
            $"""
            let sum a b {shouldNotTrigger}= a + b
            """

        use context = TestContext.CreateWithCode code

        let spanStart = code.IndexOf "sum"

        let! (newDoc, text) = tryRefactor code spanStart context (new AddExplicitReturnType())

        let! testOutput = newDoc.GetTextAsync(context.CT)
        testOutput
        let! symbol = GetSymbol "sum" newDoc context.CT

        let stillExists =
            symbol
            |> Option.map (fun symbol -> GetReturnTypeDeclarationLocation symbol)
            |> Option.isSome

        Assert.IsTrue(stillExists)
    }

[<Fact>]
let ``Refactor changes something`` () =
    task {

        let code =
            """
            let sum a b = a + b
            """

        use context = TestContext.CreateWithCode code

        let spanStart = code.IndexOf "sum"

        let! (_, text) = tryRefactor code spanStart context (new AddExplicitReturnType())

        Assert.AreNotEqual(code, text.ToString(), "")

        ()
    }

[<Fact>]
let ``Correctly infer int as explicit return type`` () =
    task {

        let code =
            """
            let sum a b = a + b
            """

        use context = TestContext.CreateWithCode code

        let spanStart = code.IndexOf "sum"

        let! (document, text) = tryRefactor code spanStart context (new AddExplicitReturnType())

        let! returnType = GetReturnTypeOfSymbol "sum" document context.CT

        match returnType with
        | Some t -> Assert.AreEqual("int", t)
        | None -> failwith "Unexpected symbol"

        ()
    }

[<Fact>]
let ``Correctly infer custom type that is declared earlier in file`` () =
    task {

        let code =
            """
            type MyType = { Value: int }
            let sum a b = {Value=a+b}
            """

        use context = TestContext.CreateWithCode code

        let spanStart = code.IndexOf "sum"

        let! (document, text) = tryRefactor code spanStart context (new AddExplicitReturnType())

        let! returnType = GetReturnTypeOfSymbol "sum" document context.CT

        match returnType with
        | Some t -> Assert.AreEqual("MyType", t)
        | None -> failwith "Unexpected symbol"

        ()
    }
