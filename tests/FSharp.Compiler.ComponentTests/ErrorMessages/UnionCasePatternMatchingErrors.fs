﻿module ErrorMessages.UnionCasePatternMatchingErrors

open FSharp.Test
open Xunit
open FSharp.Test.Compiler

[<Fact>]
let ``Union matching error - Incomplete union fields`` () =
    FSharp """
module Tests
type U =
    | B of  f1:int list * {|X:string|} * f3:U * f4: (int * System.String)

let x : U = failwith ""
let myVal = 
    match x with
    | B  -> 42"""
    |> typecheck
    |> shouldFail   
    |> withSingleDiagnostic (Error 727, Line 9, Col 7, Line 9, Col 8,
                                "This union case expects 4 arguments in tupled form, but was given 0. The missing field arguments may be any of:
\tf1: int list
\t{| X: string |}
\tf3: U
\tf4: (int * System.String)")

[<Fact>]
let ``Union matching error - Named args - Name used twice`` () =
    FSharp """
module Tests
type U =    
    | B of field: int * int
let x : U = failwith ""
let myVal = 
    match x with
    | B (field = x; field = z) -> let y = x + z + 1 in ()"""
    |> typecheck
    |> shouldFail   
    |> withSingleDiagnostic (Error 3175, Line 8, Col 21, Line 8, Col 26, "Union case/exception field 'field' cannot be used more than once.")

[<Fact>]
let ``Union matching error - Multiple tupled args`` () =
    FSharp """
module Tests
type U =
    | B of field: int * int

let x : U = failwith ""
let myVal = 
    match x with
    | B x z -> let y = x + z + 1 in ()"""
    |> typecheck
    |> shouldFail   
    |> withSingleDiagnostic (Error 727, Line 9, Col 7, Line 9, Col 12, "This union case expects 2 arguments in tupled form, but was given 0. The missing field arguments may be any of:
\tfield: int
\tint")

[<Fact>]
let ``Union matching error - Missing field`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int

let myVal = 
    match A with
    | A -> 15
    | B (x, _) -> 16"""
    |> typecheck
    |> shouldFail   
    |> withSingleDiagnostic (Error 727, Line 10, Col 7, Line 10, Col 15, "This union case expects 3 arguments in tupled form, but was given 2. The missing field arguments may be any of:
\tint")
      
[<Fact>]
let ``Union Pattern discard not allowed for union case that takes no data with Lang preview`` () =
     FSharp """
module Tests
type X = X

let x: X = X

let myVal =
    match x with
    | X _ -> ()"""
    |> withLangVersion80
    |> typecheck
    |> shouldFail
    |> withSingleDiagnostic (Warning 3548, Line 9, Col 7, Line 9, Col 10, "Pattern discard is not allowed for union case that takes no data.")
 
[<Fact>]
let ``Union Pattern discard allowed for union case that takes no data with Lang version 7`` () =
     FSharp """
module Tests
type X = X

let x: X = X

let myVal =
    match x with
    | X _ -> ()"""
    |> withLangVersion70
    |> typecheck
    |> shouldSucceed
    
[<Fact>]
let ``Union function Pattern discard allowed for union case that takes no data with Lang version 7`` () =
     FSharp """
module Tests
type X = X

let x: X = X

let myVal =
    function
    | X _ -> ()"""
    |> withLangVersion70
    |> typecheck
    |> shouldSucceed
    
[<Fact>]
let ``Union function Pattern discard not allowed for union case that takes no data with Lang version preview`` () =
     FSharp """
module Tests
type X = X

let x: X = X

let myVal =
    function
    | X _ -> ()"""
    |> withLangVersion80
    |> typecheck
    |> shouldFail
    |> withSingleDiagnostic (Warning 3548, Line 9, Col 7, Line 9, Col 10, "Pattern discard is not allowed for union case that takes no data.")
    
[<Fact>]
let ``Pattern discard not allowed for union case that takes no data with Lang preview`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int
    | C of int * int * int
    
let a : U = A

let myVal = 
    match a with
    | A _ -> 15
    | B (x, _, _) -> 16
    | C _ -> 17"""
    |> withLangVersion80
    |> typecheck
    |> shouldFail
    |> withSingleDiagnostic (Warning 3548, Line 12, Col 7, Line 12, Col 10, "Pattern discard is not allowed for union case that takes no data.")

[<Fact>]
let ``Pattern function discard not allowed for union case that takes no data with Lang preview`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int
    | C of int * int * int
    
let a : U = A

let myVal = 
    function
    | A _ -> 15
    | B (x, _, _) -> 16
    | C _ -> 17"""
    |> withLangVersion80
    |> typecheck
    |> shouldFail
    |> withSingleDiagnostic (Warning 3548, Line 12, Col 7, Line 12, Col 10, "Pattern discard is not allowed for union case that takes no data.")
    
[<Fact>]
let ``Pattern discard allowed for union case that takes no data with Lang version 7`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int
    | C of int * int * int
    
let a : U = A

let myVal = 
    match a with
    | A _ -> 15
    | B (x, _, _) -> 16
    | C _ -> 17"""
    |> withLangVersion70
    |> typecheck
    |> shouldSucceed
 
[<Fact>]
let ``Grouped Pattern discard not allowed for union case that takes no data with Lang preview`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int
    | C of int * int * int
    
let a : U = A

let myVal = 
    match a with
    | A _
    | B _
    | C _ -> 17"""
    |> withLangVersion80
    |> typecheck
    |> shouldFail
    |> withSingleDiagnostic (Warning 3548, Line 12, Col 7, Line 12, Col 10, "Pattern discard is not allowed for union case that takes no data.")

[<Fact>]
let ``Multiple pattern discards not allowed for union case that takes no data with Lang preview`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int
    | C of int * int * int
    
type V =
    | D
    
let a : U = A
let d : V = D
    
let myVal = 
    match a, d with
    | A _, D -> 15
    | B (x, _, _), D _ -> 16
    | C _, _ -> 17"""
    |> withLangVersion80
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Warning 3548, Line 16, Col 7, Line 16, Col 10, "Pattern discard is not allowed for union case that takes no data.")
        (Warning 3548, Line 17, Col 20, Line 17, Col 23, "Pattern discard is not allowed for union case that takes no data.")
    ]
    
    
// FIXME: Rename and move to a more appropriate test file
[<Fact>]
let ``Separator between member and type annotation interpreted as operator`` () =
     FSharp """
type IFoo<'T> =
    abstract member Bar<'T>: string -> unit
        """
    |> typecheck
    |> shouldSucceed
    
[<Fact>]
let ``Separator between member and type annotation interpreted as operator 2`` () =
     FSharp """
type IFoo<'T> =
    abstract member Bar<'T> : string -> unit
        """
    |> typecheck
    |> shouldSucceed
    
[<Fact>]
let ``Separator between member and type annotation interpreted as operator 3`` () =
     Fsx """
let (>:) (>:) e1 e2 = if e1 then e1 else false
        """
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Error 35, Line 2, Col 6, Line 2, Col 8, "This construct is deprecated: ':' is not permitted as a character in operator names and is reserved for future use")
        (Error 35, Line 2, Col 11, Line 2, Col 13, "This construct is deprecated: ':' is not permitted as a character in operator names and is reserved for future use")
    ]
    
[<Fact>]
let ``Separator between member and type annotation interpreted as operator 4`` () =
     Fsx """
let (>:) e1 e2 = if e1 then e1 else false
        """
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Error 35, Line 2, Col 6, Line 2, Col 8, "This construct is deprecated: ':' is not permitted as a character in operator names and is reserved for future use")
    ]
    
[<Fact>]
let ``Separator between member and type annotation interpreted as operator 5`` () =
     Fsx """
type Vector() =
    static member (>:) (>:) = false
        """
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Error 35, Line 3, Col 20, Line 3, Col 22, "This construct is deprecated: ':' is not permitted as a character in operator names and is reserved for future use")
        (Error 35, Line 3, Col 25, Line 3, Col 27, "This construct is deprecated: ':' is not permitted as a character in operator names and is reserved for future use")
        (Warning 1173, Line 3, Col 20, Line 3, Col 22, "Infix operator member '>:' has 1 initial argument(s). Expected a tuple of 2 arguments, e.g. static member (+) (x,y) = ...")
    ]
    
[<Fact>]
let ``Separator between member and type annotation interpreted as operator 7`` () =
     Fsx """
type Vector =
    static member (>:) (>:) = false
        """
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Error 35, Line 3, Col 20, Line 3, Col 22, "This construct is deprecated: ':' is not permitted as a character in operator names and is reserved for future use")
        (Error 35, Line 3, Col 25, Line 3, Col 27, "This construct is deprecated: ':' is not permitted as a character in operator names and is reserved for future use")
        (Warning 1173, Line 3, Col 20, Line 3, Col 22, "Infix operator member '>:' has 1 initial argument(s). Expected a tuple of 2 arguments, e.g. static member (+) (x,y) = ...")
    ]
    
[<Fact>]
let ``Separator between member and type annotation interpreted as operator 6`` () =
     Fsx """
type Vector() =
    static member (>:) = false
        """
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Error 35, Line 3, Col 20, Line 3, Col 22, "This construct is deprecated: ':' is not permitted as a character in operator names and is reserved for future use")
        (Warning 1172, Line 3, Col 20, Line 3, Col 22, "Infix operator member '>:' has no arguments. Expected a tuple of 2 arguments, e.g. static member (+) (x,y) = ...")
    ]
    
[<Fact>]
let ``Multiple pattern discards not allowed for union case that takes no data with Lang 7`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int
    | C of int * int * int
    
type V =
    | D
    
let a : U = A
let d : V = D
    
let myVal = 
    match a, d with
    | A _, D -> 15
    | B (x, _, _), D _ -> 16
    | C _, _ -> 17"""
    |> withLangVersion70
    |> typecheck
    |> shouldSucceed
    
[<Fact>]
let ``Multiple function pattern discards is not allowed for union case that takes no data with Lang preview`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int
    | C of int * int * int
    
type V =
    | D
    
let a : U = A
let d : V = D
    
let myVal = 
    function
    | A _, D -> 15
    | B (x, _, _), D _ -> 16
    | C _, _ -> 17"""
    |> withLangVersion80
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Warning 3548, Line 16, Col 7, Line 16, Col 10, "Pattern discard is not allowed for union case that takes no data.")
        (Warning 3548, Line 17, Col 20, Line 17, Col 23, "Pattern discard is not allowed for union case that takes no data.")
    ]
    
[<Fact>]
let ``Multiple function pattern discards is not allowed for union case that takes no data with Lang 7`` () =
     FSharp """
module Tests
type U =
    | A
    | B of int * int * int
    | C of int * int * int
    
type V =
    | D
    
let a : U = A

let d : V = D
    
let myVal = 
    function
    | A _, D -> 15
    | B (x, _, _), D _ -> 16
    | C _, _ -> 17"""
    |> withLangVersion70
    |> typecheck
    |> shouldSucceed
    
[<Theory; Directory(__SOURCE_DIRECTORY__, Includes=[|"E_UnionCaseTakesNoArguments.fs"|])>]
let ``Pattern named not allowed union case does not take any arguments with Lang 7`` compilation =
    compilation
    |> asFs
    |> withLangVersion70
    |> withOptions ["--nowarn:25"]
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Error 725, Line 8, Col 3, Line 8, Col 9, "This union case does not take arguments");
        (Error 725, Line 11, Col 3, Line 11, Col 14, "This union case does not take arguments")
        (Error 725, Line 14, Col 3, Line 14, Col 10, "This union case does not take arguments")
        (Error 725, Line 17, Col 3, Line 17, Col 12, "This union case does not take arguments")
        (Error 725, Line 20, Col 3, Line 20, Col 17, "This union case does not take arguments")
        (Error 725, Line 23, Col 3, Line 23, Col 13, "This union case does not take arguments")
        (Error 725, Line 26, Col 3, Line 26, Col 14, "This union case does not take arguments")
        (Error 725, Line 29, Col 3, Line 29, Col 13, "This union case does not take arguments")
        (Error 725, Line 35, Col 3, Line 35, Col 9, "This union case does not take arguments")
        (Error 725, Line 38, Col 3, Line 38, Col 14, "This union case does not take arguments")
        (Error 725, Line 42, Col 3, Line 42, Col 11, "This union case does not take arguments")
        (Error 725, Line 48, Col 3, Line 48, Col 8, "This union case does not take arguments")
        (Error 725, Line 51, Col 3, Line 51, Col 7, "This union case does not take arguments")
        (Error 725, Line 55, Col 25, Line 55, Col 28, "This union case does not take arguments")
        (Error 725, Line 57, Col 25, Line 57, Col 29, "This union case does not take arguments")
        (Error 725, Line 59, Col 24, Line 59, Col 32, "This union case does not take arguments")
    ]
    
[<Theory; Directory(__SOURCE_DIRECTORY__, Includes=[|"E_UnionCaseTakesNoArguments.fs"|])>]
let ``Pattern named not allowed union case does not take any arguments with Lang preview`` compilation =
    compilation
    |> asFs
    |> withLangVersion80
    |> withOptions ["--nowarn:25"]
    |> typecheck
    |> shouldFail
    |> withDiagnostics [
        (Error 725, Line 8, Col 3, Line 8, Col 9, "This union case does not take arguments")
        (Error 725, Line 11, Col 3, Line 11, Col 14, "This union case does not take arguments")
        (Error 725, Line 14, Col 3, Line 14, Col 10, "This union case does not take arguments")
        (Error 725, Line 17, Col 3, Line 17, Col 12, "This union case does not take arguments")
        (Error 725, Line 20, Col 3, Line 20, Col 17, "This union case does not take arguments")
        (Error 725, Line 23, Col 3, Line 23, Col 13, "This union case does not take arguments")
        (Error 725, Line 26, Col 3, Line 26, Col 14, "This union case does not take arguments")
        (Error 725, Line 29, Col 3, Line 29, Col 13, "This union case does not take arguments")
        (Warning 3548, Line 32, Col 3, Line 32, Col 9, "Pattern discard is not allowed for union case that takes no data.")
        (Error 725, Line 35, Col 3, Line 35, Col 9, "This union case does not take arguments")
        (Error 725, Line 38, Col 3, Line 38, Col 14, "This union case does not take arguments")
        (Error 725, Line 42, Col 3, Line 42, Col 11, "This union case does not take arguments")
        (Error 725, Line 48, Col 3, Line 48, Col 8, "This union case does not take arguments")
        (Error 725, Line 51, Col 3, Line 51, Col 7, "This union case does not take arguments")
        (Warning 3548, Line 53, Col 24, Line 53, Col 27, "Pattern discard is not allowed for union case that takes no data.")
        (Error 725, Line 55, Col 25, Line 55, Col 28, "This union case does not take arguments")
        (Error 725, Line 57, Col 25, Line 57, Col 29, "This union case does not take arguments")
        (Error 725, Line 59, Col 24, Line 59, Col 32, "This union case does not take arguments")
    ]