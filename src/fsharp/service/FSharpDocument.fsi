// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace FSharp.Compiler.CodeAnalysis

open System
open System.IO
open FSharp.Compiler.Text

[<RequireQualifiedAccess>]
type FSharpDocumentText =
    internal
    | Stream of Stream
    | SourceText of ISourceText

    interface IDisposable

[<AbstractClass>]
type FSharpDocument =

    abstract FilePath : string

    abstract TimeStamp : DateTime

    abstract GetText : unit -> FSharpDocumentText

    static member CreateFromFile : filePath: string -> FSharpDocument

    static member CreateCopyFromFile : filePath: string -> FSharpDocument

    static member Create : filePath: string * getTimeStamp: (unit -> DateTime) * getSourceText: (unit -> ISourceText) -> FSharpDocument