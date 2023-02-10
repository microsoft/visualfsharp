﻿module FSharp.Compiler.ComponentTests.Signatures.TypeTests

open Xunit
open FsUnit
open FSharp.Test.Compiler
open FSharp.Compiler.ComponentTests.Signatures.TestHelpers

[<Fact>]
let ``Recursive type with attribute`` () =
    FSharp
        """
namespace Foo.Types

open System.Collections.Generic

type FormatSelectionRequest =
    {
        SourceCode: string
        /// File path will be used to identify the .editorconfig options
        /// Unless the configuration is passed
        FilePath: string
        /// Overrides the found .editorconfig.
        Config: IReadOnlyDictionary<string, string> option
        /// Range follows the same semantics of the FSharp Compiler Range type.
        Range: FormatSelectionRange
    }

    member this.IsSignatureFile = this.FilePath.EndsWith(".fsi")

and FormatSelectionRange =
    struct
        val StartLine: int
        val StartColumn: int
        val EndLine: int
        val EndColumn: int

        new(startLine: int, startColumn: int, endLine: int, endColumn: int) =
            { StartLine = startLine
              StartColumn = startColumn
              EndLine = endLine
              EndColumn = endColumn }
    end
"""
    |> printSignatures
    |> prependNewline
    |> should equal
        """
namespace Foo.Types

  type FormatSelectionRequest =
    {
      SourceCode: string

      /// File path will be used to identify the .editorconfig options
      /// Unless the configuration is passed
      FilePath: string

      /// Overrides the found .editorconfig.
      Config: System.Collections.Generic.IReadOnlyDictionary<string,string> option

      /// Range follows the same semantics of the FSharp Compiler Range type.
      Range: FormatSelectionRange
    }

    member IsSignatureFile: bool

  and [<Struct>] FormatSelectionRange =

    new: startLine: int * startColumn: int * endLine: int * endColumn: int -> FormatSelectionRange

    val StartLine: int

    val StartColumn: int

    val EndLine: int

    val EndColumn: int"""

[<Fact>]
let ``System.Int32 type extension`` () =
    FSharp
        """
module Hej

type System.Int32 with
    member i.PlusPlus () = i + 1
    member i.PlusPlusPlus () : int = i + 1 + 1

type X(y:int) =
    member x.PlusPlus () = y + 1
"""
    |> printSignatures
    |> should equal
        """
module Hej
type int with

  member PlusPlus: unit -> int
type int with

  member PlusPlusPlus: unit -> int

type X =

  new: y: int -> X

  member PlusPlus: unit -> int"""
