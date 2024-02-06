﻿module Language.NullableLibraryConstructs

open Xunit
open FSharp.Test
open FSharp.Test.Compiler

let typeCheckWithStrictNullness cu =
    cu
    |> withLangVersionPreview
    |> withCheckNulls
    |> withWarnOn 3261
    |> withOptions ["--warnaserror+"]
    |> typecheck

[<FactForNETCOREAPP>]
let ``Can unsafely forgive null using Unchecked nonNull function`` () = 
    FSharp """module MyLibrary

let readAllLines (reader:System.IO.StreamReader) : seq<string> =
    seq {
        while not reader.EndOfStream do
            reader.ReadLine() |> Unchecked.nonNull
    }
"""
    |> asLibrary
    |> typeCheckWithStrictNullness
    |> shouldSucceed

[<FactForNETCOREAPP>]
let ``Can unsafely forgive null using Unchecked NonNullQuick active pattern`` () = 
    FSharp """module MyLibrary

let readAllLines (reader:System.IO.StreamReader) : seq<string> =
    seq {
        while not reader.EndOfStream do
            match reader.ReadLine() with
            | Unchecked.NonNullQuick line -> yield line
    }
"""
    |> asLibrary
    |> typeCheckWithStrictNullness
    |> shouldSucceed