﻿// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace Microsoft.VisualStudio.FSharp.Editor.Hints

open Microsoft.CodeAnalysis
open FSharp.Compiler.Text
open Internal.Utilities.CancellableTasks

module Hints =

    type HintKind =
        | TypeHint
        | ParameterNameHint
        | ReturnTypeHint

    // Relatively convenient for testing
    type NativeHint =
        {
            Kind: HintKind
            Range: range
            Parts: TaggedText list
            GetTooltip: Document -> CancellableTask<TaggedText list>
        }

    let serialize kind =
        match kind with
        | TypeHint -> "type"
        | ParameterNameHint -> "parameterName"
        | ReturnTypeHint -> "returnType"
