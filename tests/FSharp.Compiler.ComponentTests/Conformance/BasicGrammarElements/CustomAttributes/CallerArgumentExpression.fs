// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace Conformance.BasicGrammarElements

open Xunit
open FSharp.Test.Compiler

module CustomAttributes_CallerArgumentExpression =

    [<Fact>]
    let ``Can consume CallerArgumentExpression in BCL methods`` () =
        FSharp """
try System.ArgumentNullException.ThrowIfNullOrWhiteSpace(Seq.init 50 (fun _ -> " ")
  (* comment *) 
  |> String.concat " ")
with :? System.ArgumentException as ex -> 
  assert (ex.Message.Contains("(Parameter 'Seq.init 50 (fun _ -> \" \")\n  (* comment *) \n  |> String.concat \" \""))
"""
        |> withLangVersionPreview
        |> compileAndRun
        |> shouldSucceed
        |> ignore

    [<Fact>]
    let ``Can define in F#`` () =
        FSharp """# 1 "C:\\Program.fs"
open System.Runtime.InteropServices
type A() =
static member aa (
    a,
    [<CallerMemberName; Optional; DefaultParameterValue "no value">]b: string, 
    [<CallerLineNumber; Optional; DefaultParameterValue 0>]c: int, 
    [<CallerFilePath; Optional; DefaultParameterValue "no value">]d: string, 
    [<CallerArgumentExpressionAttribute("a"); Optional; DefaultParameterValue "no value">]e: string) = 
    a,b,c,d,e

let stringABC = "abc"
assert (A.aa(stringABC) = ("abc", ".ctor", 12, "C:\Program.fs", "stringABC"))
        """
        |> withLangVersionPreview
        |> compileAndRun
        |> shouldSucceed
        |> ignore