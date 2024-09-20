﻿// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace CompilerOptions.Fsc

open Xunit
open FSharp.Test
open FSharp.Test.Compiler
open System

module utf8output =

    [<Fact>]
    let ``OutputEncoding is restored after executing compilation`` () =
        let currentEncoding = Console.OutputEncoding
        use restoreCurrentEncodingAfterTest = { new IDisposable with member _.Dispose() = Console.OutputEncoding <- currentEncoding }

        let encoding = Text.Encoding.GetEncoding("iso-8859-1")

        Console.OutputEncoding <- encoding

        Fs """printfn "Hello world" """
        |> asExe
        |> withOptionsString "--utf8output"
        |> compile
        |> shouldSucceed
        |> ignore

        Console.OutputEncoding.BodyName |> Assert.shouldBe encoding.BodyName
