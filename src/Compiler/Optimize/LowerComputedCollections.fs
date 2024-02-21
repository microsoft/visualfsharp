// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

module internal FSharp.Compiler.LowerComputedCollectionExpressions

open FSharp.Compiler.AbstractIL.IL
open FSharp.Compiler.AccessibilityLogic
open FSharp.Compiler.DiagnosticsLogger
open FSharp.Compiler.Features
open FSharp.Compiler.InfoReader
open FSharp.Compiler.LowerSequenceExpressions
open FSharp.Compiler.MethodCalls
open FSharp.Compiler.Syntax
open FSharp.Compiler.TcGlobals
open FSharp.Compiler.TypeRelations
open FSharp.Compiler.TypedTree
open FSharp.Compiler.TypedTreeOps
open FSharp.Compiler.TypeHierarchy

/// Build the 'test and dispose' part of a 'use' statement
let BuildDisposableCleanup tcVal (g: TcGlobals) infoReader m (v: Val) =
    let disposeMethod = 
        match GetIntrinsicMethInfosOfType infoReader (Some "Dispose") AccessibleFromSomewhere AllowMultiIntfInstantiations.Yes IgnoreOverrides m g.system_IDisposable_ty with
        | [x] -> x
        | _ -> error(InternalError(FSComp.SR.tcCouldNotFindIDisposable(), m))
    // For struct types the test is simpler
    if isStructTy g v.Type then
        assert (TypeFeasiblySubsumesType 0 g infoReader.amap m g.system_IDisposable_ty CanCoerce v.Type)
        // We can use NeverMutates here because the variable is going out of scope, there is no need to take a defensive
        // copy of it.
        let disposeExpr, _ = BuildMethodCall tcVal g infoReader.amap NeverMutates m false disposeMethod NormalValUse [] [exprForVal v.Range v] [] None
        //callNonOverloadedILMethod g infoReader.amap m "Dispose" g.system_IDisposable_ty [exprForVal v.Range v]
        
        disposeExpr
    else
        let disposeObjVar, disposeObjExpr = mkCompGenLocal m "objectToDispose" g.system_IDisposable_ty
        let disposeExpr, _ = BuildMethodCall tcVal g infoReader.amap PossiblyMutates m false disposeMethod NormalValUse [] [disposeObjExpr] [] None
        let inputExpr = mkCoerceExpr(exprForVal v.Range v, g.obj_ty, m, v.Type)
        mkIsInstConditional g m g.system_IDisposable_ty inputExpr disposeObjVar disposeExpr (mkUnit g m)

let mkCallCollectorMethod tcVal (g: TcGlobals) infoReader m name collExpr args =
    let listCollectorTy = tyOfExpr g collExpr
    let addMethod = 
        match GetIntrinsicMethInfosOfType infoReader (Some name) AccessibleFromSomewhere AllowMultiIntfInstantiations.Yes IgnoreOverrides m listCollectorTy with
        | [x] -> x
        | _ -> error(InternalError("no " + name + " method found on Collector", m))
    let expr, _ = BuildMethodCall tcVal g infoReader.amap DefinitelyMutates m false addMethod NormalValUse [] [collExpr] args None
    expr

let mkCallCollectorAdd tcVal (g: TcGlobals) infoReader m collExpr arg =
    mkCallCollectorMethod tcVal g infoReader m "Add" collExpr [arg]

let mkCallCollectorAddMany tcVal (g: TcGlobals) infoReader m collExpr arg =
    mkCallCollectorMethod tcVal g infoReader m "AddMany" collExpr [arg]

let mkCallCollectorAddManyAndClose tcVal (g: TcGlobals) infoReader m collExpr arg =
    mkCallCollectorMethod tcVal g infoReader m "AddManyAndClose" collExpr [arg]

let mkCallCollectorClose tcVal (g: TcGlobals) infoReader m collExpr =
    mkCallCollectorMethod tcVal g infoReader m "Close" collExpr []

let LowerComputedListOrArraySeqExpr tcVal g amap m collectorTy overallSeqExpr =
    let infoReader = InfoReader(g, amap)
    let collVal, collExpr = mkMutableCompGenLocal m "@collector" collectorTy
    //let collExpr = mkValAddr m false (mkLocalValRef collVal)
    let rec ConvertSeqExprCode isUninteresting isTailcall expr =
        match expr with
        | SeqYield g (e, m) -> 
            let exprR = mkCallCollectorAdd tcVal g infoReader m collExpr e
            Result.Ok (false, exprR)

        | SeqDelay g (delayedExpr, _elemTy) ->
            ConvertSeqExprCode isUninteresting isTailcall delayedExpr

        | SeqAppend g (e1, e2, m) ->
            let res1 = ConvertSeqExprCode false false e1
            let res2 = ConvertSeqExprCode false isTailcall e2
            match res1, res2 with 
            | Result.Ok (_, e1R), Result.Ok (closed2, e2R) -> 
                let exprR = mkSequential m e1R e2R
                Result.Ok (closed2, exprR)
            | Result.Error msg, _ | _, Result.Error msg -> Result.Error msg

        | SeqWhile g (guardExpr, bodyExpr, spWhile, m) ->
            let resBody = ConvertSeqExprCode false false bodyExpr
            match resBody with 
            | Result.Ok (_, bodyExprR) ->
                let exprR = mkWhile g (spWhile, NoSpecialWhileLoopMarker, guardExpr, bodyExprR, m)
                Result.Ok (false, exprR)
            | Result.Error msg -> Result.Error msg

        | SeqUsing g (resource, v, bodyExpr, _elemTy, spBind, m) ->
            let resBody = ConvertSeqExprCode false false bodyExpr
            match resBody with 
            | Result.Ok (_, bodyExprR) ->
                // printfn "found Seq.using"
                let cleanupE = BuildDisposableCleanup tcVal g infoReader m v
                let exprR = 
                    mkLet spBind m v resource
                        (mkTryFinally g (bodyExprR, cleanupE, m, tyOfExpr g bodyExpr, DebugPointAtTry.No, DebugPointAtFinally.No))
                Result.Ok (false, exprR)
            | Result.Error msg -> Result.Error msg

        | SeqForEach g (inp, v, bodyExpr, _genElemTy, mFor, mIn, spIn) ->
            let resBody = ConvertSeqExprCode false false bodyExpr
            match resBody with 
            | Result.Ok (_, bodyExprR) ->
                // printfn "found Seq.for"
                let inpElemTy = v.Type
                let inpEnumTy = mkIEnumeratorTy g inpElemTy
                let enumv, enumve = mkCompGenLocal m "enum" inpEnumTy
                let guardExpr = callNonOverloadedILMethod g amap m "MoveNext" inpEnumTy [enumve]
                let cleanupE = BuildDisposableCleanup tcVal g infoReader m enumv

                // A debug point should get emitted prior to both the evaluation of 'inp' and the call to GetEnumerator
                let addForDebugPoint e = Expr.DebugPoint(DebugPointAtLeafExpr.Yes mFor, e)

                let spInAsWhile = match spIn with DebugPointAtInOrTo.Yes m -> DebugPointAtWhile.Yes m | DebugPointAtInOrTo.No -> DebugPointAtWhile.No

                let exprR =
                    mkInvisibleLet mFor enumv (callNonOverloadedILMethod g amap mFor "GetEnumerator" (mkSeqTy g inpElemTy) [inp])
                        (mkTryFinally g 
                            (mkWhile g (spInAsWhile, NoSpecialWhileLoopMarker, guardExpr, 
                                (mkInvisibleLet mIn v 
                                    (callNonOverloadedILMethod g amap mIn "get_Current" inpEnumTy [enumve]))
                                    bodyExprR, mIn), 
                            cleanupE,
                            mFor, tyOfExpr g bodyExpr, DebugPointAtTry.No, DebugPointAtFinally.No))
                    |> addForDebugPoint
                Result.Ok (false, exprR)
            | Result.Error msg -> Result.Error msg

        | SeqTryFinally g (bodyExpr, compensation, spTry, spFinally, m) ->
            let resBody = ConvertSeqExprCode false false bodyExpr
            match resBody with 
            | Result.Ok (_, bodyExprR) ->
                let exprR =
                    mkTryFinally g (bodyExprR, compensation, m, tyOfExpr g bodyExpr, spTry, spFinally)
                Result.Ok (false, exprR)
            | Result.Error msg -> Result.Error msg

        | SeqEmpty g m ->
            let exprR = mkUnit g m
            Result.Ok(false, exprR)

        | Expr.Sequential (x1, bodyExpr, NormalSeq, m) ->
            let resBody = ConvertSeqExprCode isUninteresting isTailcall bodyExpr
            match resBody with 
            | Result.Ok (closed, bodyExprR) ->
                let exprR = Expr.Sequential (x1, bodyExprR, NormalSeq, m)
                Result.Ok(closed, exprR)
            | Result.Error msg -> Result.Error msg

        | Expr.Let (bind, bodyExpr, m, _) ->
            let resBody = ConvertSeqExprCode isUninteresting isTailcall bodyExpr
            match resBody with 
            | Result.Ok (closed, bodyExprR) ->
                let exprR = mkLetBind m bind bodyExprR
                Result.Ok(closed, exprR)
            | Result.Error msg -> Result.Error msg

        | Expr.LetRec (binds, bodyExpr, m, _) ->
            let resBody = ConvertSeqExprCode isUninteresting isTailcall bodyExpr
            match resBody with 
            | Result.Ok (closed, bodyExprR) ->
                let exprR = mkLetRecBinds m binds bodyExprR
                Result.Ok(closed, exprR)
            | Result.Error msg -> Result.Error msg

        | Expr.Match (spBind, mExpr, pt, targets, m, ty) ->
            // lower all the targets. abandon if any fail to lower
            let resTargets =
                targets |> Array.map (fun (TTarget(vs, targetExpr, flags)) -> 
                    match ConvertSeqExprCode false false targetExpr with 
                    | Result.Ok (_, targetExprR) -> 
                        Result.Ok (TTarget(vs, targetExprR, flags))
                    | Result.Error msg -> Result.Error msg )

            if resTargets |> Array.forall (function Result.Ok _ -> true | _ -> false) then
                let tglArray = Array.map (function Result.Ok v -> v | _ -> failwith "unreachable") resTargets

                let exprR = primMkMatch (spBind, mExpr, pt, tglArray, m, ty)
                Result.Ok(false, exprR)
            else
                resTargets |> Array.pick (function Result.Error msg -> Some (Result.Error msg) | _ -> None)

        | Expr.DebugPoint(dp, innerExpr) ->
            let resInnerExpr = ConvertSeqExprCode isUninteresting isTailcall innerExpr
            match resInnerExpr with 
            | Result.Ok (flag, innerExprR) ->
                let exprR = Expr.DebugPoint(dp, innerExprR)
                Result.Ok (flag, exprR)
            | Result.Error msg -> Result.Error msg

        // yield! e ---> (for x in e -> x)

        | arbitrarySeqExpr ->
            let m = arbitrarySeqExpr.Range
            if isUninteresting then
                // printfn "FAILED - not worth compiling an unrecognized Seq.toList at %s " (stringOfRange m)
                Result.Error ()
            else
                // If we're the final in a sequential chain then we can AddMany, Close and return
                if isTailcall then 
                    let exprR = mkCallCollectorAddManyAndClose tcVal (g: TcGlobals) infoReader m collExpr arbitrarySeqExpr
                    // Return 'true' to indicate the collector was closed and the overall result of the expression is the result
                    Result.Ok(true, exprR)
                else
                    let exprR = mkCallCollectorAddMany tcVal (g: TcGlobals) infoReader m collExpr arbitrarySeqExpr
                    Result.Ok(false, exprR)


    // Perform conversion
    match ConvertSeqExprCode true true overallSeqExpr with 
    | Result.Ok (closed, overallSeqExprR) ->
        mkInvisibleLet m collVal (mkDefault (m, collectorTy)) 
            (if closed then 
                // If we ended with AddManyAndClose then we're done
                overallSeqExprR
             else
                mkSequential m
                    overallSeqExprR
                    (mkCallCollectorClose tcVal g infoReader m collExpr))
        |> Some
    | Result.Error () -> 
        None

let (|OptionalCoerce|) expr = 
    match expr with
    | Expr.Op (TOp.Coerce, _, [arg], _) -> arg
    | _ -> expr

// Making 'seq' optional means this kicks in for FSharp.Core, see TcArrayOrListComputedExpression
// which only adds a 'seq' call outside of FSharp.Core
[<return: Struct>]
let (|OptionalSeq|_|) g amap expr =
    match expr with
    // use 'seq { ... }' as an indicator
    | Seq g (e, elemTy) -> 
        ValueSome (e, elemTy)
    | _ -> 
    // search for the relevant element type
    match tyOfExpr g expr with
    | SeqElemTy g amap expr.Range elemTy ->
        ValueSome (expr, elemTy)
    | _ -> ValueNone

[<return: Struct>]
let (|SeqToList|_|) g expr =
    match expr with
    | ValApp g g.seq_to_list_vref (_, [seqExpr], m) -> ValueSome (seqExpr, m)
    | _ -> ValueNone

[<return: Struct>]
let (|SeqToArray|_|) g expr =
    match expr with
    | ValApp g g.seq_to_array_vref (_, [seqExpr], m) -> ValueSome (seqExpr, m)
    | _ -> ValueNone

module List =
    /// Makes an expression that will build a list from an integral range.
    let mkFromIntegralRange tcVal (g: TcGlobals) amap m overallElemTy overallSeqExpr start step finish =
        let collectorTy = g.mk_ListCollector_ty overallElemTy

        /// let collector = ListCollector () in
        /// <initialization loop>
        /// collector.Close ()
        let mkListInit mkLoop =
            mkCompGenLetMutableIn m "collector" collectorTy (mkDefault (m, collectorTy)) (fun (_, collector) ->
                let reader = InfoReader (g, amap)
                let loop = mkLoop (fun _idxVar loopVar -> mkCallCollectorAdd tcVal g reader m collector loopVar)
                let close = mkCallCollectorClose tcVal g reader m collector
                mkSequential m loop close
            )

        mkOptimizedRangeLoop
            g
            (m, m, m, DebugPointAtWhile.No)
            (overallElemTy, overallSeqExpr)
            (start, step, finish)
            (fun count mkLoop ->
                match count with
                | Expr.Const (value = IntegralConst.Zero) ->
                    mkNil g m overallElemTy

                | Expr.Const (value = _nonzeroConstant) ->
                    mkListInit mkLoop

                | _dynamicCount ->
                    mkListInit mkLoop
            )

module Array =
    /// Whether to check for overflow when converting a value to a native int.
    type Ovf =
        /// Check for overflow. We need this when passing the count into newarr.
        | CheckOvf

        /// Don't check for overflow. We don't need to check when indexing into the array,
        /// since we already know count didn't overflow during initialization.
        | NoCheckOvf

    /// Makes an expression that will build an array from an integral range.
    let mkFromIntegralRange g m overallElemTy overallSeqExpr start step finish =
        let arrayTy = mkArrayType g overallElemTy

        let convToNativeInt ovf expr =
            let ty = stripMeasuresFromTy g (tyOfExpr g expr)

            let conv =
                match ovf with
                | NoCheckOvf -> AI_conv DT_I
                | CheckOvf when isSignedIntegerTy g ty -> AI_conv_ovf DT_I
                | CheckOvf -> AI_conv_ovf_un DT_I

            if typeEquiv g ty g.int64_ty then
                mkAsmExpr ([conv], [], [expr], [g.nativeint_ty], m)
            elif typeEquiv g ty g.nativeint_ty then
                mkAsmExpr ([conv], [], [mkAsmExpr ([AI_conv DT_I8], [], [expr], [g.int64_ty], m)], [g.nativeint_ty], m)
            elif typeEquiv g ty g.uint64_ty then
                mkAsmExpr ([conv], [], [expr], [g.nativeint_ty], m)
            elif typeEquiv g ty g.unativeint_ty then
                mkAsmExpr ([conv], [], [mkAsmExpr ([AI_conv DT_U8], [], [expr], [g.uint64_ty], m)], [g.nativeint_ty], m)
            else
                expr

        let ilTy, ilBasicTy =
            let ty = stripMeasuresFromTy g overallElemTy

            if typeEquiv g ty g.int32_ty then g.ilg.typ_Int32, DT_I4
            elif typeEquiv g ty g.int64_ty then g.ilg.typ_Int64, DT_I8
            elif typeEquiv g ty g.uint64_ty then g.ilg.typ_UInt64, DT_U8
            elif typeEquiv g ty g.uint32_ty then g.ilg.typ_UInt32, DT_U4
            elif typeEquiv g ty g.nativeint_ty then g.ilg.typ_IntPtr, DT_I
            elif typeEquiv g ty g.unativeint_ty then g.ilg.typ_UIntPtr, DT_U
            elif typeEquiv g ty g.int16_ty then g.ilg.typ_Int16, DT_I2
            elif typeEquiv g ty g.uint16_ty then g.ilg.typ_UInt16, DT_U2
            elif typeEquiv g ty g.sbyte_ty then g.ilg.typ_SByte, DT_I1
            elif typeEquiv g ty g.byte_ty then g.ilg.typ_Byte, DT_U1
            elif typeEquiv g ty g.char_ty then g.ilg.typ_Char, DT_U2
            else error (InternalError ($"Unable to find IL type for integral type '{overallElemTy}'.", m))

        /// (# "newarr !0" type ('T) count : 'T array #)
        let mkNewArray count =
            mkAsmExpr
                (
                    [I_newarr (ILArrayShape.SingleDimensional, ilTy)],
                    [],
                    [convToNativeInt CheckOvf count],
                    [arrayTy],
                    m
                )

        /// let array = (# "newarr !0" type ('T) count : 'T array #) in
        /// <initialization loop>
        /// array
        let mkArrayInit count mkLoop =
            mkCompGenLetIn m "array" arrayTy (mkNewArray count) (fun (_, array) ->
                let loop = mkLoop (fun idxVar loopVar -> mkAsmExpr ([I_stelem ilBasicTy], [], [array; convToNativeInt NoCheckOvf idxVar; loopVar], [], m))
                mkSequential m loop array)

        mkOptimizedRangeLoop
            g
            (m, m, m, DebugPointAtWhile.No)
            (overallElemTy, overallSeqExpr)
            (start, step, finish)
            (fun count mkLoop ->
                match count with
                | Expr.Const (value = IntegralConst.Zero) ->
                    mkArray (overallElemTy, [], m)

                | Expr.Const (value = _nonzeroConstant) ->
                    mkArrayInit count mkLoop

                | _dynamicCount ->
                    let countTy = tyOfExpr g count

                    // count < 1
                    let countLtOne =
                        if isSignedIntegerTy g countTy then
                            mkILAsmClt g m count (mkTypedOne g m countTy)
                        else
                            mkAsmExpr ([AI_clt_un], [], [count; mkTypedOne g m countTy], [g.bool_ty], m)

                    // if count < 1 then
                    //     [||]
                    // else
                    //     let array = (# "newarr !0" type ('T) count : 'T array #) in
                    //     <initialization loop>
                    //     array
                    mkCond
                        DebugPointAtBinding.NoneAtInvisible
                        m
                        arrayTy
                        countLtOne
                        (mkArray (overallElemTy, [], m))
                        (mkArrayInit count mkLoop)
            )

let LowerComputedListOrArrayExpr tcVal (g: TcGlobals) amap overallExpr =
    // If ListCollector is in FSharp.Core then this optimization kicks in
    if g.ListCollector_tcr.CanDeref then
        match overallExpr with
        // […]
        | SeqToList g (OptionalCoerce (OptionalSeq g amap (overallSeqExpr, overallElemTy)), m) ->
            match overallSeqExpr with
            // [start..finish]
            // [start..step..finish]
            | IntegralRange g (_, (start, step, finish)) when g.langVersion.SupportsFeature LanguageFeature.LowerIntegralRangesToFastLoops ->
                Some (List.mkFromIntegralRange tcVal g amap m overallElemTy overallSeqExpr start step finish)

            // [(* Anything more complex. *)]
            | _ ->
                let collectorTy = g.mk_ListCollector_ty overallElemTy
                LowerComputedListOrArraySeqExpr tcVal g amap m collectorTy overallSeqExpr

        // [|…|]
        | SeqToArray g (OptionalCoerce (OptionalSeq g amap (overallSeqExpr, overallElemTy)), m) ->
            match overallSeqExpr with
            // [|start..finish|]
            // [|start..step..finish|]
            | IntegralRange g (_, (start, step, finish)) when g.langVersion.SupportsFeature LanguageFeature.LowerIntegralRangesToFastLoops ->
                Some (Array.mkFromIntegralRange g m overallElemTy overallSeqExpr start step finish)

            // [|(* Anything more complex. *)|]
            | _ ->
                let collectorTy = g.mk_ArrayCollector_ty overallElemTy
                LowerComputedListOrArraySeqExpr tcVal g amap m collectorTy overallSeqExpr

        | _ -> None
    else
        None
