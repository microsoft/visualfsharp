﻿// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

namespace FSharp.Compiler.ComponentTests.EmittedIL

open Xunit
open FSharp.Test.Utilities.Compiler

module ``TupleElimination`` =

    [<Fact>]
    let ``Sequence expressions with potential side effects do not prevent tuple elimination``() =
        FSharp """
module TupleElimination
open System.Runtime.CompilerServices

[<MethodImpl(MethodImplOptions.NoInlining)>]
let f () = 3

let x () =
    let a, b =
        "".ToString () |> ignore
        System.DateTime.Now |> ignore
        "3".ToString () |> ignore
        2, f ()
    System.DateTime.Now |> ignore
    a + b

let y () =
    let a, b, c =
        let a = f ()
        System.Console.ReadKey () |> ignore
        a, f (), f ()
    a + b + c

let z () =
    let a, b, c =
        let u, v = 3, 4
        System.Console.ReadKey () |> ignore
        f (), f () + u, f () + v
    a + b + c
         """
         |> compile
         |> shouldSucceed
         |> verifyIL [
            
// public static int x()
// {
//     string text = "".ToString();
//     DateTime now = DateTime.Now;
//     text = "3".ToString();
//     int num = TupleElimination.f();
//     now = DateTime.Now;
//     return 2 + num;
// }          
                      """
.method public static int32  x() cil managed
{
  
  .maxstack  4
  .locals init (string V_0,
           valuetype [runtime]System.DateTime V_1,
           int32 V_2)
  IL_0000:  ldstr      ""
  IL_0005:  callvirt   instance string [runtime]System.Object::ToString()
  IL_000a:  stloc.0
  IL_000b:  call       valuetype [runtime]System.DateTime [runtime]System.DateTime::get_Now()
  IL_0010:  stloc.1
  IL_0011:  ldstr      "3"
  IL_0016:  callvirt   instance string [runtime]System.Object::ToString()
  IL_001b:  stloc.0
  IL_001c:  call       int32 TupleElimination::f()
  IL_0021:  stloc.2
  IL_0022:  call       valuetype [runtime]System.DateTime [runtime]System.DateTime::get_Now()
  IL_0027:  stloc.1
  IL_0028:  ldc.i4.2
  IL_0029:  ldloc.2
  IL_002a:  add
  IL_002b:  ret
}
"""

// public static int y()
// {
//     int num = TupleElimination.f();
//     ConsoleKeyInfo consoleKeyInfo = Console.ReadKey();
//     return num + TupleElimination.f() + TupleElimination.f();
// }
                      """
.method public static int32  y() cil managed
{
  
  .maxstack  4
  .locals init (int32 V_0,
           valuetype [runtime]System.ConsoleKeyInfo V_1)
  IL_0000:  call       int32 TupleElimination::f()
  IL_0005:  stloc.0
  IL_0006:  call       valuetype [runtime]System.ConsoleKeyInfo [runtime]System.Console::ReadKey()
  IL_000b:  stloc.1
  IL_000c:  ldloc.0
  IL_000d:  call       int32 TupleElimination::f()
  IL_0012:  add
  IL_0013:  call       int32 TupleElimination::f()
  IL_0018:  add
  IL_0019:  ret
}
"""

// public static int z()
// {
//     ConsoleKeyInfo consoleKeyInfo = Console.ReadKey();
//     return TupleElimination.f() + (TupleElimination.f() + 3) + (TupleElimination.f() + 4);
// }
                      """
.method public static int32  z() cil managed
{
  
  .maxstack  5
  .locals init (valuetype [runtime]System.ConsoleKeyInfo V_0)
  IL_0000:  call       valuetype [runtime]System.ConsoleKeyInfo [runtime]System.Console::ReadKey()
  IL_0005:  stloc.0
  IL_0006:  call       int32 TupleElimination::f()
  IL_000b:  call       int32 TupleElimination::f()
  IL_0010:  ldc.i4.3
  IL_0011:  add
  IL_0012:  add
  IL_0013:  call       int32 TupleElimination::f()
  IL_0018:  ldc.i4.4
  IL_0019:  add
  IL_001a:  add
  IL_001b:  ret
}
"""]
