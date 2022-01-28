// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace FSharp.Compiler.SyntaxTrivia

open FSharp.Compiler.Text

[<NoEquality; NoComparison>]
type SynExprTryWithTrivia =
    { TryKeyword: range
      TryToWithRange: range
      WithKeyword: range
      WithToEndRange: range }

[<NoEquality; NoComparison>]
type SynExprTryFinallyTrivia =
    { TryKeyword: range
      FinallyKeyword: range }

[<NoEquality; NoComparison>]
type SynExprIfThenElseTrivia =
    { IfKeyword: range
      IsElif: bool
      ThenKeyword: range
      ElseKeyword: range option
      IfToThenRange: range }

[<NoEquality; NoComparison>]
type SynExprLambdaTrivia =
    { ArrowRange: range option }
    static member Zero: SynExprLambdaTrivia = { ArrowRange = None }

[<NoEquality; NoComparison>]
type SynMatchClauseTrivia =
    { ArrowRange: range option }
    static member Zero: SynMatchClauseTrivia = { ArrowRange = None }