﻿
// Microsoft.CodeAnalysis.ExternalAccess.FSharp.TaskList.FSharpTaskListService

namespace Microsoft.VisualStudio.FSharp.Editor

open System
open System.ComponentModel.Composition
open Microsoft.CodeAnalysis.Text
open FSharp.Compiler.CodeAnalysis
open System.Runtime.InteropServices
open Microsoft.CodeAnalysis.ExternalAccess.FSharp.Editor
open Microsoft.CodeAnalysis.ExternalAccess.FSharp.TaskList
open FSharp.Compiler
open System.Collections.Immutable

open System.Diagnostics

[<Export(typeof<IFSharpTaskListService>)>]
type internal FSharpTaskListService 
    [<ImportingConstructor>]
    (
    ) as this=

    let getDefines (doc:Microsoft.CodeAnalysis.Document) = 
        asyncMaybe { 
            let! _, _, parsingOptions, _ = doc.GetFSharpCompilationOptionsAsync(nameof(FSharpTaskListService)) |> liftAsync 
            return CompilerEnvironment.GetConditionalDefinesForEditing parsingOptions }
        |> Async.map (Option.defaultValue [])

    member _.GetTaskListItems(doc:Microsoft.CodeAnalysis.Document, descriptors: (string*'T)[], ct) = 
            backgroundTask{
                let foundTaskItems = ImmutableArray.CreateBuilder(initialCapacity=0)
                let! sourceText = doc.GetTextAsync(ct)             
                let! defines = doc |> getDefines
               
                for line in sourceText.Lines do  
                 
                    let unfilteredTokens = Tokenizer.tokenizeLine(doc.Id, sourceText, line.Span.Start, doc.FilePath, defines) 
                    let granularTokens = unfilteredTokens |> Array.filter(fun t -> t.Kind = LexerSymbolKind.Comment)               

                    let contractedTokens = 
                        ([],granularTokens) 
                        ||> Array.fold (fun acc token -> 
                            let token = {|Left = token.LeftColumn; Right = token.RightColumn|} 
                            match acc with
                            | [] -> [token]
                            | head :: tail when token.Left-head.Right <= 1   -> {|token with Left = head.Left|} :: tail
                            | _  -> token :: acc )

                    for ct in contractedTokens do    
                        let lineTxt = line.ToString()
                        let tokenSize = 1+(ct.Right - ct.Left)

                        for (dText,d) in descriptors do                     
                            let idx = lineTxt.IndexOf(dText, ct.Left, tokenSize, StringComparison.OrdinalIgnoreCase)  
                            
                            if idx > -1 then 
                                let taskLength = 1+ct.Right-idx
                                let idxAfterDesc = idx + dText.Length
                                // A descriptor followed by another letter is not a todocomment, like todoabc. But TODO, TODO2 or TODO: should be.
                                if idxAfterDesc >= lineTxt.Length || not (Char.IsLetter(lineTxt.[idxAfterDesc])) then
                                    let taskText = lineTxt.Substring(idx,taskLength).TrimEnd([|'*';')'|])
                                    let taskSpan = new TextSpan(line.Span.Start+idx, taskText.Length)
                                    foundTaskItems.Add(new FSharpTaskListItem(d, taskText, doc, taskSpan))                         
                       
    
                return foundTaskItems.ToImmutable()
            } 

    interface IFSharpTaskListService with
        member _.GetTaskListItemsAsync(doc,desc,cancellationToken) = 
            let descriptors = desc |> Seq.map (fun d -> d.Text, d) |> Array.ofSeq
            this.GetTaskListItems(doc, descriptors, cancellationToken)
