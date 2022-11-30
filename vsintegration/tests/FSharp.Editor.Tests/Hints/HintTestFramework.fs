// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace FSharp.Editor.Tests.Hints

open System
open System.Threading
open Microsoft.IO
open Microsoft.VisualStudio.FSharp.Editor
open Microsoft.VisualStudio.FSharp.Editor.Hints
open Microsoft.CodeAnalysis
open Microsoft.CodeAnalysis.Text
open Hints
open FSharp.Compiler.CodeAnalysis
open FSharp.Editor.Tests.Helpers

module HintTestFramework =

    // another representation for extra convenience
    type TestHint =
        { Content: string; Location: int * int }

    // like: C:\Program Files\dotnet\packs\Microsoft.NETCore.App.Ref\7.0.0\ref\net7.0\mscorlib.dll
    let locateMscorlib() =
        let programFiles = Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles)
        let dotnetPacks = $"{programFiles}\dotnet\packs"
        let mscorlibs = Directory.GetFiles(dotnetPacks, "mscorlib.dll", SearchOption.AllDirectories) 
        mscorlibs |> Seq.last

    let private convert hint =
        let content =
            hint.Parts |> Seq.map (fun hintPart -> hintPart.Text) |> String.concat ""

        // that's about different coordinate systems
        // in tests, the most convenient is the one used in editor,
        // hence this conversion
        let location = (hint.Range.StartLine - 1, hint.Range.EndColumn + 1)

        {
            Content = content
            Location = location
        }

    let getFsDocument code =
        use project = SingleFileProject code
        let fileName = fst project.Files.Head
        let options = { project.Options with OtherOptions = [|$"-r:{locateMscorlib()}"|] }
        let document, _ = RoslynTestHelpers.CreateSingleDocumentSolution(fileName, code, options)
        document

    let getFsiAndFsDocuments (fsiCode: string) (fsCode: string) =
        RoslynTestHelpers.CreateTwoDocumentSolution("test.fsi", SourceText.From fsiCode, "test.fs", SourceText.From fsCode)

    let getHints (document: Document) hintKinds =
        async {
            let! source = document.GetTextAsync(CancellationToken.None) |> Async.AwaitTask
            let! hints = HintService.getHintsForDocument document source hintKinds "test" CancellationToken.None
            return hints |> Seq.map convert
        }
        |> Async.RunSynchronously

    let getTypeHints document =
        getHints document (Set.empty.Add(HintKind.TypeHint))

    let getParameterNameHints document =
        getHints document (Set.empty.Add(HintKind.ParameterNameHint))

    let getAllHints document =
        let hintKinds = Set.empty.Add(HintKind.TypeHint).Add(HintKind.ParameterNameHint)

        getHints document hintKinds
