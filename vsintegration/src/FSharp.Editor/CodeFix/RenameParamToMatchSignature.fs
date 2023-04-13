// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace Microsoft.VisualStudio.FSharp.Editor

open System.Composition
open System.Threading
open System.Threading.Tasks
open System.Collections.Immutable
open System.Text.RegularExpressions

open Microsoft.CodeAnalysis
open Microsoft.CodeAnalysis.Text
open Microsoft.CodeAnalysis.CodeFixes
open Microsoft.CodeAnalysis.CodeActions
open Microsoft.VisualStudio.FSharp.Editor.SymbolHelpers

open FSharp.Compiler.Diagnostics
open FSharp.Compiler.Tokenization.FSharpKeywords

[<ExportCodeFixProvider(FSharpConstants.FSharpLanguageName, Name = CodeFix.FSharpRenameParamToMatchSignature); Shared>]
type internal FSharpRenameParamToMatchSignature [<ImportingConstructor>] () =

    inherit CodeFixProvider()

    let getSuggestion (d: Diagnostic) =
        let parts = Regex.Match(d.GetMessage(), ".+'(.+)'.+'(.+)'.+")

        if parts.Success then
            ValueSome parts.Groups.[1].Value
        else
            ValueNone

    override _.FixableDiagnosticIds = ImmutableArray.Create("FS3218")

    member this.GetChangedDocument(document: Document, diagnostics: ImmutableArray<Diagnostic>, ct: CancellationToken) =
        backgroundTask {
            let! sourceText = document.GetTextAsync(ct)

            let! changes =
                seq {
                    for d in diagnostics do
                        let suggestionOpt = getSuggestion d

                        match suggestionOpt with
                        | ValueSome suggestion ->
                            let replacement = NormalizeIdentifierBackticks suggestion

                            async {
                                let! symbolUses = getSymbolUsesOfSymbolAtLocationInDocument (document, d.Location.SourceSpan.Start)
                                let symbolUses = symbolUses |> Option.defaultValue [||]

                                return
                                    [|
                                        for symbolUse in symbolUses do
                                            match RoslynHelpers.TryFSharpRangeToTextSpan(sourceText, symbolUse.Range) with
                                            | None -> ()
                                            | Some span ->
                                                let textSpan = Tokenizer.fixupSpan (sourceText, span)
                                                yield TextChange(textSpan, replacement)
                                    |]

                            }
                        | ValueNone -> ()
                }
                |> Async.Parallel

            CodeFixHelpers.reportCodeFixRecommendation diagnostics document CodeFix.FSharpRenameParamToMatchSignature
            return document.WithText(sourceText.WithChanges(changes |> Array.concat))
        }

    override this.RegisterCodeFixesAsync ctx : Task =
        backgroundTask {
            let title = ctx.Diagnostics |> Seq.head |> getSuggestion

            match title with
            | ValueSome title ->
                let codeAction =
                    CodeAction.Create(title, (fun ct -> this.GetChangedDocument(ctx.Document, ctx.Diagnostics, ct)), title)

                ctx.RegisterCodeFix(codeAction, this.GetPrunedDiagnostics(ctx))
            | ValueNone -> ()
        }

    override this.GetFixAllProvider() =
        FixAllProvider.Create(fun fixAllCtx doc allDiagnostics -> this.GetChangedDocument(doc, allDiagnostics, fixAllCtx.CancellationToken))
