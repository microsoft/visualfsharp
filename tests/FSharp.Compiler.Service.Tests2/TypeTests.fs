﻿module FSharp.Compiler.Service.Tests2.SyntaxTreeTests.TypeTests

open FSharp.Compiler.CodeAnalysis
open FSharp.Compiler.Service.Tests.Common
open FSharp.Compiler.Syntax
open FSharp.Compiler.SyntaxTrivia
open NUnit.Framework

let unsupported = "unsupported"
type Stuff = SynLongIdent seq

let rec visitSynModuleDecl (decl : SynModuleDecl) : Stuff =
    // TODO
    match decl with
    | SynModuleDecl.Attributes(synAttributeLists, range) ->
        visitSynAttributeLists synAttributeLists
    | SynModuleDecl.Exception(synExceptionDefn, range) ->
        visitSynExceptionDefn synExceptionDefn
    | SynModuleDecl.Expr(synExpr, range) ->
        visitSynExpr synExpr
    | SynModuleDecl.HashDirective(parsedHashDirective, range) ->
        visitHashDirective parsedHashDirective
    | SynModuleDecl.Let(isRecursive, synBindings, range) ->
        visitSynBindings synBindings
    | SynModuleDecl.Open(synOpenDeclTarget, range) -> 
        visitSynOpenDeclTarget synOpenDeclTarget
    | SynModuleDecl.Types(synTypeDefns, range) ->
        visitSynTypeDefns synTypeDefns
    | SynModuleDecl.ModuleAbbrev(ident, longId, range) ->
        visitLongIdent longId
    | SynModuleDecl.NamespaceFragment synModuleOrNamespace ->
        visitSynModuleOrNamespace synModuleOrNamespace
    | SynModuleDecl.NestedModule(synComponentInfo, isRecursive, synModuleDecls, isContinuing, range, synModuleDeclNestedModuleTrivia) ->
        seq {
            yield! visitSynComponentInfo synComponentInfo
            yield! Seq.collect visitSynModuleDecl synModuleDecls
            yield! visitSynModuleDeclNestedModuleTrivia synModuleDeclNestedModuleTrivia
        }

and visitSynModuleDeclNestedModuleTrivia (x : SynModuleDeclNestedModuleTrivia) : Stuff =
    [] // TODO check

and visitHashDirective (x : ParsedHashDirective) : Stuff =
    [] // TODO Check

and visitSynIdent (x : SynIdent) : Stuff =
    [] // TODO Check

and visitSynTupleTypeSegment (x : SynTupleTypeSegment) : Stuff =
    match x with
    | SynTupleTypeSegment.Slash range ->
        []
    | SynTupleTypeSegment.Star range ->
        []
    | SynTupleTypeSegment.Type typeName ->
        visitSynType typeName

and visitSynTupleTypeSegments (x : SynTupleTypeSegment list) : Stuff =
    Seq.collect visitSynTupleTypeSegment x 

and visitSynTypar (x : SynTypar) : Stuff =
    match x with
    | SynTypar.SynTypar(ident, typarStaticReq, isCompGen) ->
        [] // TODO check

and visitSynRationalConst (x : SynRationalConst) =
    [] // TODO check

and visitSynConst (x : SynConst) : Stuff =
    [] // TODO Check

and visitSynTypes (x : SynType list) : Stuff =
    Seq.collect visitSynType x

and visitTypeConstraints (x : SynTypeConstraint list) : Stuff =
    Seq.collect visitTypeConstraint x

and visitTypeConstraint (x : SynTypeConstraint) : Stuff =
    match x with
    | SynTypeConstraint.WhereTyparIsValueType(typar, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparIsReferenceType(typar, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparIsUnmanaged(typar, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparSupportsNull(typar, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparIsComparable(typar, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparIsEquatable(typar, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparDefaultsToType(typar, typeName: SynType, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparSubtypeOfType(typar, typeName: SynType, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparSupportsMember(typars: SynType, memberSig: SynMemberSig, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparIsEnum(typar, typeArgs: SynType list, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereTyparIsDelegate(typar, typeArgs: SynType list, range) ->
        failwith unsupported
    | SynTypeConstraint.WhereSelfConstrained(selfConstraint, range) ->
        failwith unsupported

and visitSynType (x : SynType) : Stuff =
    match x with
    | SynType.Anon range ->
        []
    | SynType.App(typeName, rangeOption, typeArgs, commaRanges, greaterRange, isPostfix, range) ->
        seq {
            yield! visitSynType typeName
            yield! typeArgs |> Seq.collect visitSynType
        }
    | SynType.Array(rank, elementType, range) ->
        visitSynType elementType
    | SynType.Fun(argType, returnType, range, synTypeFunTrivia) ->
        seq {
            yield! visitSynType argType
            yield! visitSynType returnType
        }
    | SynType.Or(lhsType, rhsType, range, synTypeOrTrivia) ->
        seq {
            yield! visitSynType lhsType
            yield! visitSynType rhsType
        }
    | SynType.Paren(innerType, range) ->
        visitSynType innerType
    | SynType.Tuple(isStruct, synTupleTypeSegments, range) ->
        visitSynTupleTypeSegments synTupleTypeSegments
    | SynType.Var(synTypar, range) ->
        visitSynTypar synTypar
    | SynType.AnonRecd(isStruct, fields, range) ->
        fields |> Seq.collect (fun (id, f) -> visitSynType f)
    | SynType.HashConstraint(innerType, range) ->
        visitSynType innerType
    | SynType.LongIdent synLongIdent ->
        visitSynLongIdent synLongIdent
    | SynType.MeasureDivide(synType, divisor, range) ->
        seq {
            yield! visitSynType synType
            yield! visitSynType divisor
        }
    | SynType.MeasurePower(baseMeasure, synRationalConst, range) ->
        seq {
            yield! visitSynType baseMeasure
            yield! visitSynRationalConst synRationalConst
        }
    | SynType.SignatureParameter(synAttributeLists, optional, identOption, usedType, range) ->
        seq {
            yield! visitSynAttributeLists synAttributeLists
            yield! visitSynType usedType
        }
    | SynType.StaticConstant(synConst, range) ->
        visitSynConst synConst
    | SynType.LongIdentApp(typeName, synLongIdent, rangeOption, typeArgs, commaRanges, greaterRange, range) ->
        seq {
            yield! visitSynType typeName
            yield! visitSynLongIdent synLongIdent
            yield! visitSynTypes typeArgs
        }
    | SynType.StaticConstantExpr(synExpr, range) ->
        seq {
            yield! visitSynExpr synExpr
        }
    | SynType.StaticConstantNamed(synType, value, range) ->
        seq {
            yield! visitSynType synType
            yield! visitSynType value
        }
    | SynType.WithGlobalConstraints(typeName, synTypeConstraints, range) ->
        seq {
            yield! visitSynType typeName
            yield! visitTypeConstraints synTypeConstraints
        }
        failwith unsupported

and visitPreXmlDoc (doc : FSharp.Compiler.Xml.PreXmlDoc) : Stuff =
    [] // TODO Check

and visitSynAccess (x : SynAccess) : Stuff =
    failwith unsupported

and visitSynField (x : SynField) : Stuff =
    match x with
    | SynField.SynField(synAttributeLists, isStatic, identOption, fieldType, isMutable, preXmlDoc, synAccessOption, range, synFieldTrivia) ->
        seq {
            yield! visitSynAttributeLists synAttributeLists
            yield! visitSynType fieldType
            yield! visitPreXmlDoc preXmlDoc
            match synAccessOption with | Some access -> yield! visitSynAccess access | None -> ()
        }

and visitSynFields (x : SynField list) : Stuff =
    Seq.collect visitSynField x

and visitSynUnionCaseKind (x : SynUnionCaseKind) : Stuff =
    match x with
    | SynUnionCaseKind.Fields synFields ->
        
        [] // TODO
    | SynUnionCaseKind.FullType(fullType, fullTypeInfo) ->
        [] // TODO

and visitSynUnionCase (x : SynUnionCase) : Stuff =
    match x with
    | SynUnionCase.SynUnionCase(synAttributeLists, synIdent, synUnionCaseKind, preXmlDoc, synAccessOption, range, synUnionCaseTrivia) ->
        seq {
            yield! visitSynAttributeLists synAttributeLists
            yield! visitSynIdent synIdent
            yield! visitSynUnionCaseKind synUnionCaseKind
        }

and visitSynExceptionDefnRepr (x : SynExceptionDefnRepr) : Stuff =
    match x with
    | SynExceptionDefnRepr.SynExceptionDefnRepr(synAttributeLists, synUnionCase, identsOption, preXmlDoc, synAccessOption, range) ->
        seq {
            yield! visitSynAttributeLists synAttributeLists
            yield! visitSynUnionCase synUnionCase
            // TODO
        }

and visitSynTypeDefnRepr (x : SynTypeDefnRepr) : Stuff =
    match x with
    | SynTypeDefnRepr.Exception synExceptionDefnRepr ->
        visitSynExceptionDefnRepr synExceptionDefnRepr

and visitSynMemberDefn (defn : SynMemberDefn) : Stuff =
    [] // TODO

and visitSynMemberDefns (defns : SynMemberDefn list) : Stuff =
    Seq.collect visitSynMemberDefn defns

and visitSynTypeDefn (defn : SynTypeDefn) : Stuff =
    match defn with
    | SynTypeDefn.SynTypeDefn(synComponentInfo, synTypeDefnRepr, synMemberDefns, synMemberDefnOption, range, synTypeDefnTrivia) ->
        seq {
            yield! visitSynComponentInfo synComponentInfo
            yield! visitSynTypeDefnRepr synTypeDefnRepr
            yield! visitSynMemberDefns synMemberDefns
            match synMemberDefnOption with Some defn -> yield! visitSynMemberDefn defn | None -> ()
        }

and visitSynTypeDefns (defns : SynTypeDefn list) : Stuff =
    Seq.collect visitSynTypeDefn defns

and visitSynExceptionDefn (defn : SynExceptionDefn) : Stuff =
    []

and visitSynBinding (binding : SynBinding) : Stuff =
    [] // TODO

and visitSynBindings (bindings : SynBinding list) : Stuff =
    Seq.collect visitSynBinding bindings

and visitSynOpenDeclTarget (target : SynOpenDeclTarget) : Stuff =
    [] // TODO

and visitSynComponentInfo (info : SynComponentInfo) : Stuff =
    [] // TODO

and visitLongIdent (ident : LongIdent) : Stuff =
    [] // TODO
    
and visitSynLongIdent (ident : SynLongIdent) : Stuff  =
    [ident]
    
and visitSynExpr (expr : SynExpr) =
    // TODO
    match expr with
    | _ -> []
    
and visitSynAttribute (attribute : SynAttribute) : Stuff  =
    seq {
        yield! visitSynLongIdent attribute.TypeName
        yield! visitSynExpr attribute.ArgExpr
    }
                
and visitSynAttributeList (attributeList : SynAttributeList) : Stuff  =
    attributeList.Attributes
    |> Seq.collect visitSynAttribute

and visitSynAttributeLists (attributeLists : SynAttributeList list) : Stuff  =
    Seq.collect visitSynAttributeList attributeLists

and visitSynModuleOrNamespace (x : SynModuleOrNamespace) : Stuff  =
    match x with
    | SynModuleOrNamespace.SynModuleOrNamespace(longId, isRecursive, synModuleOrNamespaceKind, synModuleDecls, preXmlDoc, synAttributeLists, synAccessOption, range, synModuleOrNamespaceTrivia) ->
        seq {
            yield! synModuleDecls |> Seq.collect visitSynModuleDecl
            yield! visitSynAttributeLists synAttributeLists 
        }

and visit (input : ParsedInput) : Stuff  =
    match input with
    | ParsedInput.SigFile _ -> failwith unsupported
    | ParsedInput.ImplFile(ParsedImplFileInput(fileName, isScript, qualifiedNameOfFile, scopedPragmas, parsedHashDirectives, synModuleOrNamespaces, flags, parsedImplFileInputTrivia)) ->
        synModuleOrNamespaces
        |> Seq.collect visitSynModuleOrNamespace

[<Test>]
let ``Single SynEnumCase contains range of constant`` () =
    let parseResults = 
        getParseResults
            """
type Foo = One = 0x00000001
"""

    match parseResults with
    | ParsedInput.ImplFile (ParsedImplFileInput (contents = [ SynModuleOrNamespace.SynModuleOrNamespace(decls = [
        SynModuleDecl.Types(typeDefns = [
            SynTypeDefn.SynTypeDefn(typeRepr =
                SynTypeDefnRepr.Simple(simpleRepr = SynTypeDefnSimpleRepr.Enum(cases = [ SynEnumCase.SynEnumCase(valueRange = r) ])))])
    ]) ])) ->
        assertRange (2, 17) (2, 27) r
    | _ -> Assert.Fail "Could not get valid AST"
