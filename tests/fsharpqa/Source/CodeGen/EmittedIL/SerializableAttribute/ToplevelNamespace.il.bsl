
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.3928.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern FSharp.Core
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 5:0:0:0
}
.assembly ToplevelNamespace
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.FSharpInterfaceDataVersionAttribute::.ctor(int32,
                                                                                                      int32,
                                                                                                      int32) = ( 01 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 01 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.mresource public FSharpSignatureData.ToplevelNamespace
{
  // Offset: 0x00000000 Length: 0x00001848
}
.mresource public FSharpOptimizationData.ToplevelNamespace
{
  // Offset: 0x00001850 Length: 0x0000055C
}
.module ToplevelNamespace.dll
// MVID: {61240635-218B-729A-A745-038335062461}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x06D90000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto autochar serializable sealed beforefieldinit XYZ.Expr
       extends [mscorlib]System.Object
       implements class [mscorlib]System.IEquatable`1<class XYZ.Expr>,
                  [mscorlib]System.Collections.IStructuralEquatable,
                  class [mscorlib]System.IComparable`1<class XYZ.Expr>,
                  [mscorlib]System.IComparable,
                  [mscorlib]System.Collections.IStructuralComparable
{
  .custom instance void [mscorlib]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 15 7B 5F 5F 44 65 62 75 67 44 69 73 70 6C   // ...{__DebugDispl
                                                                                                 61 79 28 29 2C 6E 71 7D 00 00 )                   // ay(),nq}..
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 01 00 00 00 00 00 ) 
  .field assembly initonly int32 item
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public static class XYZ.Expr  NewNum(int32 item) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                int32) = ( 01 00 08 00 00 00 00 00 00 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  newobj     instance void XYZ.Expr::.ctor(int32)
    IL_0006:  ret
  } // end of method Expr::NewNum

  .method assembly specialname rtspecialname 
          instance void  .ctor(int32 item) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 XYZ.Expr::item
    IL_000d:  ret
  } // end of method Expr::.ctor

  .method public hidebysig instance int32 
          get_Item() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 XYZ.Expr::item
    IL_0006:  ret
  } // end of method Expr::get_Item

  .method public hidebysig instance int32 
          get_Tag() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       4 (0x4)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  pop
    IL_0002:  ldc.i4.0
    IL_0003:  ret
  } // end of method Expr::get_Tag

  .method assembly hidebysig specialname 
          instance object  __DebugDisplay() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldstr      "%+0.8A"
    IL_0005:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.Expr,string>,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string,string>::.ctor(string)
    IL_000a:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.ExtraTopLevelOperators::PrintFormatToString<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.Expr,string>>(class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string>)
    IL_000f:  ldarg.0
    IL_0010:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.Expr,string>::Invoke(!0)
    IL_0015:  ret
  } // end of method Expr::__DebugDisplay

  .method public strict virtual instance string 
          ToString() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       22 (0x16)
    .maxstack  8
    IL_0000:  ldstr      "%+A"
    IL_0005:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.Expr,string>,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string,class XYZ.Expr>::.ctor(string)
    IL_000a:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.ExtraTopLevelOperators::PrintFormatToString<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.Expr,string>>(class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string>)
    IL_000f:  ldarg.0
    IL_0010:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.Expr,string>::Invoke(!0)
    IL_0015:  ret
  } // end of method Expr::ToString

  .method public hidebysig virtual final 
          instance int32  CompareTo(class XYZ.Expr obj) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       65 (0x41)
    .maxstack  4
    .locals init ([0] class XYZ.Expr V_0,
             [1] class XYZ.Expr V_1,
             [2] class [mscorlib]System.Collections.IComparer V_2,
             [3] int32 V_3,
             [4] int32 V_4)
    .language '{AB4F38C9-B6E6-43BA-BE3B-58080B2CCCE3}', '{994B45C4-E6E9-11D2-903F-00C04FA302A1}', '{5A869D0B-6611-11D3-BD2A-0000F80849BD}'
    .line 7,7 : 10,14 'C:\\GitHub\\dsyme\\fsharp\\tests\\fsharpqa\\source\\CodeGen\\EmittedIL\\SerializableAttribute\\ToplevelNamespace.fs'
    IL_0000:  nop
    .line 100001,100001 : 0,0 ''
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  cgt.un
    IL_0005:  brfalse.s  IL_0037

    .line 100001,100001 : 0,0 ''
    IL_0007:  ldarg.1
    IL_0008:  ldnull
    IL_0009:  cgt.un
    IL_000b:  brfalse.s  IL_0035

    .line 100001,100001 : 0,0 ''
    IL_000d:  ldarg.0
    IL_000e:  pop
    .line 100001,100001 : 0,0 ''
    IL_000f:  ldarg.0
    IL_0010:  stloc.0
    IL_0011:  ldarg.1
    IL_0012:  stloc.1
    IL_0013:  call       class [mscorlib]System.Collections.IComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericComparer()
    IL_0018:  stloc.2
    IL_0019:  ldloc.0
    IL_001a:  ldfld      int32 XYZ.Expr::item
    IL_001f:  stloc.3
    IL_0020:  ldloc.1
    IL_0021:  ldfld      int32 XYZ.Expr::item
    IL_0026:  stloc.s    V_4
    .line 100001,100001 : 0,0 ''
    IL_0028:  ldloc.3
    IL_0029:  ldloc.s    V_4
    IL_002b:  bge.s      IL_002f

    .line 100001,100001 : 0,0 ''
    IL_002d:  ldc.i4.m1
    IL_002e:  ret

    .line 100001,100001 : 0,0 ''
    IL_002f:  ldloc.3
    IL_0030:  ldloc.s    V_4
    IL_0032:  cgt
    IL_0034:  ret

    .line 100001,100001 : 0,0 ''
    IL_0035:  ldc.i4.1
    IL_0036:  ret

    .line 100001,100001 : 0,0 ''
    IL_0037:  ldarg.1
    IL_0038:  ldnull
    IL_0039:  cgt.un
    IL_003b:  brfalse.s  IL_003f

    .line 100001,100001 : 0,0 ''
    IL_003d:  ldc.i4.m1
    IL_003e:  ret

    .line 100001,100001 : 0,0 ''
    IL_003f:  ldc.i4.0
    IL_0040:  ret
  } // end of method Expr::CompareTo

  .method public hidebysig virtual final 
          instance int32  CompareTo(object obj) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    .line 7,7 : 10,14 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  unbox.any  XYZ.Expr
    IL_0007:  callvirt   instance int32 XYZ.Expr::CompareTo(class XYZ.Expr)
    IL_000c:  ret
  } // end of method Expr::CompareTo

  .method public hidebysig virtual final 
          instance int32  CompareTo(object obj,
                                    class [mscorlib]System.Collections.IComparer comp) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       80 (0x50)
    .maxstack  4
    .locals init ([0] class XYZ.Expr V_0,
             [1] class XYZ.Expr V_1,
             [2] class XYZ.Expr V_2,
             [3] class [mscorlib]System.Collections.IComparer V_3,
             [4] int32 V_4,
             [5] int32 V_5)
    .line 7,7 : 10,14 ''
    IL_0000:  ldarg.1
    IL_0001:  unbox.any  XYZ.Expr
    IL_0006:  stloc.0
    .line 100001,100001 : 0,0 ''
    IL_0007:  ldarg.0
    IL_0008:  ldnull
    IL_0009:  cgt.un
    IL_000b:  brfalse.s  IL_0041

    .line 100001,100001 : 0,0 ''
    IL_000d:  ldarg.1
    IL_000e:  unbox.any  XYZ.Expr
    IL_0013:  ldnull
    IL_0014:  cgt.un
    IL_0016:  brfalse.s  IL_003f

    .line 100001,100001 : 0,0 ''
    IL_0018:  ldarg.0
    IL_0019:  pop
    .line 100001,100001 : 0,0 ''
    IL_001a:  ldarg.0
    IL_001b:  stloc.1
    IL_001c:  ldloc.0
    IL_001d:  stloc.2
    IL_001e:  ldarg.2
    IL_001f:  stloc.3
    IL_0020:  ldloc.1
    IL_0021:  ldfld      int32 XYZ.Expr::item
    IL_0026:  stloc.s    V_4
    IL_0028:  ldloc.2
    IL_0029:  ldfld      int32 XYZ.Expr::item
    IL_002e:  stloc.s    V_5
    .line 100001,100001 : 0,0 ''
    IL_0030:  ldloc.s    V_4
    IL_0032:  ldloc.s    V_5
    IL_0034:  bge.s      IL_0038

    .line 100001,100001 : 0,0 ''
    IL_0036:  ldc.i4.m1
    IL_0037:  ret

    .line 100001,100001 : 0,0 ''
    IL_0038:  ldloc.s    V_4
    IL_003a:  ldloc.s    V_5
    IL_003c:  cgt
    IL_003e:  ret

    .line 100001,100001 : 0,0 ''
    IL_003f:  ldc.i4.1
    IL_0040:  ret

    .line 100001,100001 : 0,0 ''
    IL_0041:  ldarg.1
    IL_0042:  unbox.any  XYZ.Expr
    IL_0047:  ldnull
    IL_0048:  cgt.un
    IL_004a:  brfalse.s  IL_004e

    .line 100001,100001 : 0,0 ''
    IL_004c:  ldc.i4.m1
    IL_004d:  ret

    .line 100001,100001 : 0,0 ''
    IL_004e:  ldc.i4.0
    IL_004f:  ret
  } // end of method Expr::CompareTo

  .method public hidebysig virtual final 
          instance int32  GetHashCode(class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       42 (0x2a)
    .maxstack  7
    .locals init ([0] int32 V_0,
             [1] class XYZ.Expr V_1,
             [2] class [mscorlib]System.Collections.IEqualityComparer V_2)
    .line 7,7 : 10,14 ''
    IL_0000:  nop
    .line 100001,100001 : 0,0 ''
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  cgt.un
    IL_0005:  brfalse.s  IL_0028

    .line 100001,100001 : 0,0 ''
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.0
    .line 100001,100001 : 0,0 ''
    IL_0009:  ldarg.0
    IL_000a:  pop
    .line 100001,100001 : 0,0 ''
    IL_000b:  ldarg.0
    IL_000c:  stloc.1
    IL_000d:  ldc.i4.0
    IL_000e:  stloc.0
    IL_000f:  ldc.i4     0x9e3779b9
    IL_0014:  ldarg.1
    IL_0015:  stloc.2
    IL_0016:  ldloc.1
    IL_0017:  ldfld      int32 XYZ.Expr::item
    IL_001c:  ldloc.0
    IL_001d:  ldc.i4.6
    IL_001e:  shl
    IL_001f:  ldloc.0
    IL_0020:  ldc.i4.2
    IL_0021:  shr
    IL_0022:  add
    IL_0023:  add
    IL_0024:  add
    IL_0025:  stloc.0
    IL_0026:  ldloc.0
    IL_0027:  ret

    .line 100001,100001 : 0,0 ''
    IL_0028:  ldc.i4.0
    IL_0029:  ret
  } // end of method Expr::GetHashCode

  .method public hidebysig virtual final 
          instance int32  GetHashCode() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  8
    .line 7,7 : 10,14 ''
    IL_0000:  ldarg.0
    IL_0001:  call       class [mscorlib]System.Collections.IEqualityComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericEqualityComparer()
    IL_0006:  callvirt   instance int32 XYZ.Expr::GetHashCode(class [mscorlib]System.Collections.IEqualityComparer)
    IL_000b:  ret
  } // end of method Expr::GetHashCode

  .method public hidebysig virtual final 
          instance bool  Equals(object obj,
                                class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       53 (0x35)
    .maxstack  4
    .locals init ([0] class XYZ.Expr V_0,
             [1] class XYZ.Expr V_1,
             [2] class XYZ.Expr V_2,
             [3] class XYZ.Expr V_3,
             [4] class [mscorlib]System.Collections.IEqualityComparer V_4)
    .line 7,7 : 10,14 ''
    IL_0000:  nop
    .line 100001,100001 : 0,0 ''
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  cgt.un
    IL_0005:  brfalse.s  IL_002d

    .line 100001,100001 : 0,0 ''
    IL_0007:  ldarg.1
    IL_0008:  isinst     XYZ.Expr
    IL_000d:  stloc.0
    .line 100001,100001 : 0,0 ''
    IL_000e:  ldloc.0
    IL_000f:  brfalse.s  IL_002b

    .line 100001,100001 : 0,0 ''
    IL_0011:  ldloc.0
    IL_0012:  stloc.1
    .line 100001,100001 : 0,0 ''
    IL_0013:  ldarg.0
    IL_0014:  pop
    .line 100001,100001 : 0,0 ''
    IL_0015:  ldarg.0
    IL_0016:  stloc.2
    IL_0017:  ldloc.1
    IL_0018:  stloc.3
    IL_0019:  ldarg.2
    IL_001a:  stloc.s    V_4
    IL_001c:  ldloc.2
    IL_001d:  ldfld      int32 XYZ.Expr::item
    IL_0022:  ldloc.3
    IL_0023:  ldfld      int32 XYZ.Expr::item
    IL_0028:  ceq
    IL_002a:  ret

    .line 100001,100001 : 0,0 ''
    IL_002b:  ldc.i4.0
    IL_002c:  ret

    .line 100001,100001 : 0,0 ''
    IL_002d:  ldarg.1
    IL_002e:  ldnull
    IL_002f:  cgt.un
    IL_0031:  ldc.i4.0
    IL_0032:  ceq
    IL_0034:  ret
  } // end of method Expr::Equals

  .method public hidebysig virtual final 
          instance bool  Equals(class XYZ.Expr obj) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       44 (0x2c)
    .maxstack  4
    .locals init ([0] class XYZ.Expr V_0,
             [1] class XYZ.Expr V_1)
    .line 7,7 : 10,14 ''
    IL_0000:  nop
    .line 100001,100001 : 0,0 ''
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  cgt.un
    IL_0005:  brfalse.s  IL_0024

    .line 100001,100001 : 0,0 ''
    IL_0007:  ldarg.1
    IL_0008:  ldnull
    IL_0009:  cgt.un
    IL_000b:  brfalse.s  IL_0022

    .line 100001,100001 : 0,0 ''
    IL_000d:  ldarg.0
    IL_000e:  pop
    .line 100001,100001 : 0,0 ''
    IL_000f:  ldarg.0
    IL_0010:  stloc.0
    IL_0011:  ldarg.1
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  ldfld      int32 XYZ.Expr::item
    IL_0019:  ldloc.1
    IL_001a:  ldfld      int32 XYZ.Expr::item
    IL_001f:  ceq
    IL_0021:  ret

    .line 100001,100001 : 0,0 ''
    IL_0022:  ldc.i4.0
    IL_0023:  ret

    .line 100001,100001 : 0,0 ''
    IL_0024:  ldarg.1
    IL_0025:  ldnull
    IL_0026:  cgt.un
    IL_0028:  ldc.i4.0
    IL_0029:  ceq
    IL_002b:  ret
  } // end of method Expr::Equals

  .method public hidebysig virtual final 
          instance bool  Equals(object obj) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       20 (0x14)
    .maxstack  4
    .locals init ([0] class XYZ.Expr V_0)
    .line 7,7 : 10,14 ''
    IL_0000:  ldarg.1
    IL_0001:  isinst     XYZ.Expr
    IL_0006:  stloc.0
    .line 100001,100001 : 0,0 ''
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0012

    .line 100001,100001 : 0,0 ''
    IL_000a:  ldarg.0
    IL_000b:  ldloc.0
    IL_000c:  callvirt   instance bool XYZ.Expr::Equals(class XYZ.Expr)
    IL_0011:  ret

    .line 100001,100001 : 0,0 ''
    IL_0012:  ldc.i4.0
    IL_0013:  ret
  } // end of method Expr::Equals

  .property instance int32 Tag()
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
    .get instance int32 XYZ.Expr::get_Tag()
  } // end of property Expr::Tag
  .property instance int32 Item()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                int32,
                                                                                                int32) = ( 01 00 04 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    .get instance int32 XYZ.Expr::get_Item()
  } // end of property Expr::Item
} // end of class XYZ.Expr

.class public auto ansi serializable beforefieldinit XYZ.MyExn
       extends [mscorlib]System.Exception
       implements [mscorlib]System.Collections.IStructuralEquatable
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 05 00 00 00 00 00 ) 
  .field assembly int32 Data0@
  .method public specialname rtspecialname 
          instance void  .ctor(int32 data0) cil managed
  {
    // Code size       14 (0xe)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  ldarg.1
    IL_0008:  stfld      int32 XYZ.MyExn::Data0@
    IL_000d:  ret
  } // end of method MyExn::.ctor

  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
    IL_0006:  ret
  } // end of method MyExn::.ctor

  .method family specialname rtspecialname 
          instance void  .ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo info,
                               valuetype [mscorlib]System.Runtime.Serialization.StreamingContext context) cil managed
  {
    // Code size       9 (0x9)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  ldarg.2
    IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo,
                                                                         valuetype [mscorlib]System.Runtime.Serialization.StreamingContext)
    IL_0008:  ret
  } // end of method MyExn::.ctor

  .method public hidebysig specialname instance int32 
          get_Data0() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldfld      int32 XYZ.MyExn::Data0@
    IL_0006:  ret
  } // end of method MyExn::get_Data0

  .method public hidebysig virtual instance int32 
          GetHashCode(class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       41 (0x29)
    .maxstack  7
    .locals init ([0] int32 V_0,
             [1] class [mscorlib]System.Collections.IEqualityComparer V_1)
    .line 8,8 : 15,20 ''
    IL_0000:  nop
    .line 100001,100001 : 0,0 ''
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  cgt.un
    IL_0005:  brfalse.s  IL_0027

    .line 100001,100001 : 0,0 ''
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.0
    IL_0009:  ldc.i4     0x9e3779b9
    IL_000e:  ldarg.1
    IL_000f:  stloc.1
    IL_0010:  ldarg.0
    IL_0011:  castclass  XYZ.MyExn
    IL_0016:  call       instance int32 XYZ.MyExn::get_Data0()
    IL_001b:  ldloc.0
    IL_001c:  ldc.i4.6
    IL_001d:  shl
    IL_001e:  ldloc.0
    IL_001f:  ldc.i4.2
    IL_0020:  shr
    IL_0021:  add
    IL_0022:  add
    IL_0023:  add
    IL_0024:  stloc.0
    IL_0025:  ldloc.0
    IL_0026:  ret

    .line 100001,100001 : 0,0 ''
    IL_0027:  ldc.i4.0
    IL_0028:  ret
  } // end of method MyExn::GetHashCode

  .method public hidebysig virtual instance int32 
          GetHashCode() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       12 (0xc)
    .maxstack  8
    .line 8,8 : 15,20 ''
    IL_0000:  ldarg.0
    IL_0001:  call       class [mscorlib]System.Collections.IEqualityComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericEqualityComparer()
    IL_0006:  callvirt   instance int32 XYZ.MyExn::GetHashCode(class [mscorlib]System.Collections.IEqualityComparer)
    IL_000b:  ret
  } // end of method MyExn::GetHashCode

  .method public hidebysig virtual instance bool 
          Equals(object obj,
                 class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       68 (0x44)
    .maxstack  4
    .locals init ([0] class [mscorlib]System.Exception V_0,
             [1] class [mscorlib]System.Exception V_1,
             [2] class [mscorlib]System.Collections.IEqualityComparer V_2)
    .line 8,8 : 15,20 ''
    IL_0000:  nop
    .line 100001,100001 : 0,0 ''
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  cgt.un
    IL_0005:  brfalse.s  IL_003c

    .line 100001,100001 : 0,0 ''
    IL_0007:  ldarg.1
    IL_0008:  isinst     [mscorlib]System.Exception
    IL_000d:  stloc.0
    .line 100001,100001 : 0,0 ''
    IL_000e:  ldloc.0
    IL_000f:  brfalse.s  IL_003a

    .line 100001,100001 : 0,0 ''
    IL_0011:  ldloc.0
    IL_0012:  stloc.1
    .line 100001,100001 : 0,0 ''
    IL_0013:  ldloc.0
    IL_0014:  call       bool [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives/IntrinsicFunctions::TypeTestGeneric<class XYZ.MyExn>(object)
    IL_0019:  brtrue.s   IL_001d

    IL_001b:  br.s       IL_0038

    .line 100001,100001 : 0,0 ''
    IL_001d:  ldarg.2
    IL_001e:  stloc.2
    IL_001f:  ldarg.0
    IL_0020:  castclass  XYZ.MyExn
    IL_0025:  call       instance int32 XYZ.MyExn::get_Data0()
    IL_002a:  ldloc.1
    IL_002b:  castclass  XYZ.MyExn
    IL_0030:  call       instance int32 XYZ.MyExn::get_Data0()
    IL_0035:  ceq
    IL_0037:  ret

    .line 100001,100001 : 0,0 ''
    IL_0038:  ldc.i4.0
    IL_0039:  ret

    .line 100001,100001 : 0,0 ''
    IL_003a:  ldc.i4.0
    IL_003b:  ret

    .line 100001,100001 : 0,0 ''
    IL_003c:  ldarg.1
    IL_003d:  ldnull
    IL_003e:  cgt.un
    IL_0040:  ldc.i4.0
    IL_0041:  ceq
    IL_0043:  ret
  } // end of method MyExn::Equals

  .method public hidebysig instance bool 
          Equals(class [mscorlib]System.Exception obj) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       60 (0x3c)
    .maxstack  8
    .line 8,8 : 15,20 ''
    IL_0000:  nop
    .line 100001,100001 : 0,0 ''
    IL_0001:  ldarg.0
    IL_0002:  ldnull
    IL_0003:  cgt.un
    IL_0005:  brfalse.s  IL_0034

    .line 100001,100001 : 0,0 ''
    IL_0007:  ldarg.1
    IL_0008:  ldnull
    IL_0009:  cgt.un
    IL_000b:  brfalse.s  IL_0032

    .line 100001,100001 : 0,0 ''
    IL_000d:  ldarg.1
    IL_000e:  call       bool [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives/IntrinsicFunctions::TypeTestGeneric<class XYZ.MyExn>(object)
    IL_0013:  brtrue.s   IL_0017

    IL_0015:  br.s       IL_0030

    .line 100001,100001 : 0,0 ''
    IL_0017:  ldarg.0
    IL_0018:  castclass  XYZ.MyExn
    IL_001d:  call       instance int32 XYZ.MyExn::get_Data0()
    IL_0022:  ldarg.1
    IL_0023:  castclass  XYZ.MyExn
    IL_0028:  call       instance int32 XYZ.MyExn::get_Data0()
    IL_002d:  ceq
    IL_002f:  ret

    .line 100001,100001 : 0,0 ''
    IL_0030:  ldc.i4.0
    IL_0031:  ret

    .line 100001,100001 : 0,0 ''
    IL_0032:  ldc.i4.0
    IL_0033:  ret

    .line 100001,100001 : 0,0 ''
    IL_0034:  ldarg.1
    IL_0035:  ldnull
    IL_0036:  cgt.un
    IL_0038:  ldc.i4.0
    IL_0039:  ceq
    IL_003b:  ret
  } // end of method MyExn::Equals

  .method public hidebysig virtual instance bool 
          Equals(object obj) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       20 (0x14)
    .maxstack  4
    .locals init ([0] class [mscorlib]System.Exception V_0)
    .line 8,8 : 15,20 ''
    IL_0000:  ldarg.1
    IL_0001:  isinst     [mscorlib]System.Exception
    IL_0006:  stloc.0
    .line 100001,100001 : 0,0 ''
    IL_0007:  ldloc.0
    IL_0008:  brfalse.s  IL_0012

    .line 100001,100001 : 0,0 ''
    IL_000a:  ldarg.0
    IL_000b:  ldloc.0
    IL_000c:  callvirt   instance bool XYZ.MyExn::Equals(class [mscorlib]System.Exception)
    IL_0011:  ret

    .line 100001,100001 : 0,0 ''
    IL_0012:  ldc.i4.0
    IL_0013:  ret
  } // end of method MyExn::Equals

  .property instance int32 Data0()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                int32) = ( 01 00 04 00 00 00 00 00 00 00 00 00 ) 
    .get instance int32 XYZ.MyExn::get_Data0()
  } // end of property MyExn::Data0
} // end of class XYZ.MyExn

.class public auto ansi serializable XYZ.A
       extends [mscorlib]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 03 00 00 00 00 00 ) 
  .field assembly string x
  .method public specialname rtspecialname 
          instance void  .ctor(string x) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    .line 100001,100001 : 0,0 ''
    IL_0000:  ldarg.0
    IL_0001:  callvirt   instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ldarg.0
    IL_0007:  pop
    .line 9,9 : 12,13 ''
    IL_0008:  ldarg.0
    IL_0009:  ldarg.1
    IL_000a:  stfld      string XYZ.A::x
    .line 9,9 : 10,11 ''
    IL_000f:  ret
  } // end of method A::.ctor

  .method public hidebysig specialname instance string 
          get_X() cil managed
  {
    // Code size       9 (0x9)
    .maxstack  3
    .locals init ([0] class XYZ.A __)
    .line 100001,100001 : 0,0 ''
    IL_0000:  ldarg.0
    IL_0001:  stloc.0
    .line 9,9 : 38,39 ''
    IL_0002:  ldarg.0
    IL_0003:  ldfld      string XYZ.A::x
    IL_0008:  ret
  } // end of method A::get_X

  .property instance string X()
  {
    .get instance string XYZ.A::get_X()
  } // end of property A::X
} // end of class XYZ.A

.class public abstract auto ansi sealed XYZ.ABC
       extends [mscorlib]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .class auto autochar serializable sealed nested public beforefieldinit Expr
         extends [mscorlib]System.Object
         implements class [mscorlib]System.IEquatable`1<class XYZ.ABC/Expr>,
                    [mscorlib]System.Collections.IStructuralEquatable,
                    class [mscorlib]System.IComparable`1<class XYZ.ABC/Expr>,
                    [mscorlib]System.IComparable,
                    [mscorlib]System.Collections.IStructuralComparable
  {
    .custom instance void [mscorlib]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 15 7B 5F 5F 44 65 62 75 67 44 69 73 70 6C   // ...{__DebugDispl
                                                                                                   61 79 28 29 2C 6E 71 7D 00 00 )                   // ay(),nq}..
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 01 00 00 00 00 00 ) 
    .field assembly initonly int32 item
    .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    .method public static class XYZ.ABC/Expr 
            NewNum(int32 item) cil managed
    {
      .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                  int32) = ( 01 00 08 00 00 00 00 00 00 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  newobj     instance void XYZ.ABC/Expr::.ctor(int32)
      IL_0006:  ret
    } // end of method Expr::NewNum

    .method assembly specialname rtspecialname 
            instance void  .ctor(int32 item) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 XYZ.ABC/Expr::item
      IL_000d:  ret
    } // end of method Expr::.ctor

    .method public hidebysig instance int32 
            get_Item() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 XYZ.ABC/Expr::item
      IL_0006:  ret
    } // end of method Expr::get_Item

    .method public hidebysig instance int32 
            get_Tag() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       4 (0x4)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  pop
      IL_0002:  ldc.i4.0
      IL_0003:  ret
    } // end of method Expr::get_Tag

    .method assembly hidebysig specialname 
            instance object  __DebugDisplay() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       22 (0x16)
      .maxstack  8
      IL_0000:  ldstr      "%+0.8A"
      IL_0005:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/Expr,string>,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string,string>::.ctor(string)
      IL_000a:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.ExtraTopLevelOperators::PrintFormatToString<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/Expr,string>>(class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string>)
      IL_000f:  ldarg.0
      IL_0010:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/Expr,string>::Invoke(!0)
      IL_0015:  ret
    } // end of method Expr::__DebugDisplay

    .method public strict virtual instance string 
            ToString() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       22 (0x16)
      .maxstack  8
      IL_0000:  ldstr      "%+A"
      IL_0005:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/Expr,string>,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string,class XYZ.ABC/Expr>::.ctor(string)
      IL_000a:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.ExtraTopLevelOperators::PrintFormatToString<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/Expr,string>>(class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string>)
      IL_000f:  ldarg.0
      IL_0010:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/Expr,string>::Invoke(!0)
      IL_0015:  ret
    } // end of method Expr::ToString

    .method public hidebysig virtual final 
            instance int32  CompareTo(class XYZ.ABC/Expr obj) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       65 (0x41)
      .maxstack  4
      .locals init ([0] class XYZ.ABC/Expr V_0,
               [1] class XYZ.ABC/Expr V_1,
               [2] class [mscorlib]System.Collections.IComparer V_2,
               [3] int32 V_3,
               [4] int32 V_4)
      .line 13,13 : 14,18 ''
      IL_0000:  nop
      .line 100001,100001 : 0,0 ''
      IL_0001:  ldarg.0
      IL_0002:  ldnull
      IL_0003:  cgt.un
      IL_0005:  brfalse.s  IL_0037

      .line 100001,100001 : 0,0 ''
      IL_0007:  ldarg.1
      IL_0008:  ldnull
      IL_0009:  cgt.un
      IL_000b:  brfalse.s  IL_0035

      .line 100001,100001 : 0,0 ''
      IL_000d:  ldarg.0
      IL_000e:  pop
      .line 100001,100001 : 0,0 ''
      IL_000f:  ldarg.0
      IL_0010:  stloc.0
      IL_0011:  ldarg.1
      IL_0012:  stloc.1
      IL_0013:  call       class [mscorlib]System.Collections.IComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericComparer()
      IL_0018:  stloc.2
      IL_0019:  ldloc.0
      IL_001a:  ldfld      int32 XYZ.ABC/Expr::item
      IL_001f:  stloc.3
      IL_0020:  ldloc.1
      IL_0021:  ldfld      int32 XYZ.ABC/Expr::item
      IL_0026:  stloc.s    V_4
      .line 100001,100001 : 0,0 ''
      IL_0028:  ldloc.3
      IL_0029:  ldloc.s    V_4
      IL_002b:  bge.s      IL_002f

      .line 100001,100001 : 0,0 ''
      IL_002d:  ldc.i4.m1
      IL_002e:  ret

      .line 100001,100001 : 0,0 ''
      IL_002f:  ldloc.3
      IL_0030:  ldloc.s    V_4
      IL_0032:  cgt
      IL_0034:  ret

      .line 100001,100001 : 0,0 ''
      IL_0035:  ldc.i4.1
      IL_0036:  ret

      .line 100001,100001 : 0,0 ''
      IL_0037:  ldarg.1
      IL_0038:  ldnull
      IL_0039:  cgt.un
      IL_003b:  brfalse.s  IL_003f

      .line 100001,100001 : 0,0 ''
      IL_003d:  ldc.i4.m1
      IL_003e:  ret

      .line 100001,100001 : 0,0 ''
      IL_003f:  ldc.i4.0
      IL_0040:  ret
    } // end of method Expr::CompareTo

    .method public hidebysig virtual final 
            instance int32  CompareTo(object obj) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       13 (0xd)
      .maxstack  8
      .line 13,13 : 14,18 ''
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  unbox.any  XYZ.ABC/Expr
      IL_0007:  callvirt   instance int32 XYZ.ABC/Expr::CompareTo(class XYZ.ABC/Expr)
      IL_000c:  ret
    } // end of method Expr::CompareTo

    .method public hidebysig virtual final 
            instance int32  CompareTo(object obj,
                                      class [mscorlib]System.Collections.IComparer comp) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       80 (0x50)
      .maxstack  4
      .locals init ([0] class XYZ.ABC/Expr V_0,
               [1] class XYZ.ABC/Expr V_1,
               [2] class XYZ.ABC/Expr V_2,
               [3] class [mscorlib]System.Collections.IComparer V_3,
               [4] int32 V_4,
               [5] int32 V_5)
      .line 13,13 : 14,18 ''
      IL_0000:  ldarg.1
      IL_0001:  unbox.any  XYZ.ABC/Expr
      IL_0006:  stloc.0
      .line 100001,100001 : 0,0 ''
      IL_0007:  ldarg.0
      IL_0008:  ldnull
      IL_0009:  cgt.un
      IL_000b:  brfalse.s  IL_0041

      .line 100001,100001 : 0,0 ''
      IL_000d:  ldarg.1
      IL_000e:  unbox.any  XYZ.ABC/Expr
      IL_0013:  ldnull
      IL_0014:  cgt.un
      IL_0016:  brfalse.s  IL_003f

      .line 100001,100001 : 0,0 ''
      IL_0018:  ldarg.0
      IL_0019:  pop
      .line 100001,100001 : 0,0 ''
      IL_001a:  ldarg.0
      IL_001b:  stloc.1
      IL_001c:  ldloc.0
      IL_001d:  stloc.2
      IL_001e:  ldarg.2
      IL_001f:  stloc.3
      IL_0020:  ldloc.1
      IL_0021:  ldfld      int32 XYZ.ABC/Expr::item
      IL_0026:  stloc.s    V_4
      IL_0028:  ldloc.2
      IL_0029:  ldfld      int32 XYZ.ABC/Expr::item
      IL_002e:  stloc.s    V_5
      .line 100001,100001 : 0,0 ''
      IL_0030:  ldloc.s    V_4
      IL_0032:  ldloc.s    V_5
      IL_0034:  bge.s      IL_0038

      .line 100001,100001 : 0,0 ''
      IL_0036:  ldc.i4.m1
      IL_0037:  ret

      .line 100001,100001 : 0,0 ''
      IL_0038:  ldloc.s    V_4
      IL_003a:  ldloc.s    V_5
      IL_003c:  cgt
      IL_003e:  ret

      .line 100001,100001 : 0,0 ''
      IL_003f:  ldc.i4.1
      IL_0040:  ret

      .line 100001,100001 : 0,0 ''
      IL_0041:  ldarg.1
      IL_0042:  unbox.any  XYZ.ABC/Expr
      IL_0047:  ldnull
      IL_0048:  cgt.un
      IL_004a:  brfalse.s  IL_004e

      .line 100001,100001 : 0,0 ''
      IL_004c:  ldc.i4.m1
      IL_004d:  ret

      .line 100001,100001 : 0,0 ''
      IL_004e:  ldc.i4.0
      IL_004f:  ret
    } // end of method Expr::CompareTo

    .method public hidebysig virtual final 
            instance int32  GetHashCode(class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       42 (0x2a)
      .maxstack  7
      .locals init ([0] int32 V_0,
               [1] class XYZ.ABC/Expr V_1,
               [2] class [mscorlib]System.Collections.IEqualityComparer V_2)
      .line 13,13 : 14,18 ''
      IL_0000:  nop
      .line 100001,100001 : 0,0 ''
      IL_0001:  ldarg.0
      IL_0002:  ldnull
      IL_0003:  cgt.un
      IL_0005:  brfalse.s  IL_0028

      .line 100001,100001 : 0,0 ''
      IL_0007:  ldc.i4.0
      IL_0008:  stloc.0
      .line 100001,100001 : 0,0 ''
      IL_0009:  ldarg.0
      IL_000a:  pop
      .line 100001,100001 : 0,0 ''
      IL_000b:  ldarg.0
      IL_000c:  stloc.1
      IL_000d:  ldc.i4.0
      IL_000e:  stloc.0
      IL_000f:  ldc.i4     0x9e3779b9
      IL_0014:  ldarg.1
      IL_0015:  stloc.2
      IL_0016:  ldloc.1
      IL_0017:  ldfld      int32 XYZ.ABC/Expr::item
      IL_001c:  ldloc.0
      IL_001d:  ldc.i4.6
      IL_001e:  shl
      IL_001f:  ldloc.0
      IL_0020:  ldc.i4.2
      IL_0021:  shr
      IL_0022:  add
      IL_0023:  add
      IL_0024:  add
      IL_0025:  stloc.0
      IL_0026:  ldloc.0
      IL_0027:  ret

      .line 100001,100001 : 0,0 ''
      IL_0028:  ldc.i4.0
      IL_0029:  ret
    } // end of method Expr::GetHashCode

    .method public hidebysig virtual final 
            instance int32  GetHashCode() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       12 (0xc)
      .maxstack  8
      .line 13,13 : 14,18 ''
      IL_0000:  ldarg.0
      IL_0001:  call       class [mscorlib]System.Collections.IEqualityComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericEqualityComparer()
      IL_0006:  callvirt   instance int32 XYZ.ABC/Expr::GetHashCode(class [mscorlib]System.Collections.IEqualityComparer)
      IL_000b:  ret
    } // end of method Expr::GetHashCode

    .method public hidebysig virtual final 
            instance bool  Equals(object obj,
                                  class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       53 (0x35)
      .maxstack  4
      .locals init ([0] class XYZ.ABC/Expr V_0,
               [1] class XYZ.ABC/Expr V_1,
               [2] class XYZ.ABC/Expr V_2,
               [3] class XYZ.ABC/Expr V_3,
               [4] class [mscorlib]System.Collections.IEqualityComparer V_4)
      .line 13,13 : 14,18 ''
      IL_0000:  nop
      .line 100001,100001 : 0,0 ''
      IL_0001:  ldarg.0
      IL_0002:  ldnull
      IL_0003:  cgt.un
      IL_0005:  brfalse.s  IL_002d

      .line 100001,100001 : 0,0 ''
      IL_0007:  ldarg.1
      IL_0008:  isinst     XYZ.ABC/Expr
      IL_000d:  stloc.0
      .line 100001,100001 : 0,0 ''
      IL_000e:  ldloc.0
      IL_000f:  brfalse.s  IL_002b

      .line 100001,100001 : 0,0 ''
      IL_0011:  ldloc.0
      IL_0012:  stloc.1
      .line 100001,100001 : 0,0 ''
      IL_0013:  ldarg.0
      IL_0014:  pop
      .line 100001,100001 : 0,0 ''
      IL_0015:  ldarg.0
      IL_0016:  stloc.2
      IL_0017:  ldloc.1
      IL_0018:  stloc.3
      IL_0019:  ldarg.2
      IL_001a:  stloc.s    V_4
      IL_001c:  ldloc.2
      IL_001d:  ldfld      int32 XYZ.ABC/Expr::item
      IL_0022:  ldloc.3
      IL_0023:  ldfld      int32 XYZ.ABC/Expr::item
      IL_0028:  ceq
      IL_002a:  ret

      .line 100001,100001 : 0,0 ''
      IL_002b:  ldc.i4.0
      IL_002c:  ret

      .line 100001,100001 : 0,0 ''
      IL_002d:  ldarg.1
      IL_002e:  ldnull
      IL_002f:  cgt.un
      IL_0031:  ldc.i4.0
      IL_0032:  ceq
      IL_0034:  ret
    } // end of method Expr::Equals

    .method public hidebysig virtual final 
            instance bool  Equals(class XYZ.ABC/Expr obj) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       44 (0x2c)
      .maxstack  4
      .locals init ([0] class XYZ.ABC/Expr V_0,
               [1] class XYZ.ABC/Expr V_1)
      .line 13,13 : 14,18 ''
      IL_0000:  nop
      .line 100001,100001 : 0,0 ''
      IL_0001:  ldarg.0
      IL_0002:  ldnull
      IL_0003:  cgt.un
      IL_0005:  brfalse.s  IL_0024

      .line 100001,100001 : 0,0 ''
      IL_0007:  ldarg.1
      IL_0008:  ldnull
      IL_0009:  cgt.un
      IL_000b:  brfalse.s  IL_0022

      .line 100001,100001 : 0,0 ''
      IL_000d:  ldarg.0
      IL_000e:  pop
      .line 100001,100001 : 0,0 ''
      IL_000f:  ldarg.0
      IL_0010:  stloc.0
      IL_0011:  ldarg.1
      IL_0012:  stloc.1
      IL_0013:  ldloc.0
      IL_0014:  ldfld      int32 XYZ.ABC/Expr::item
      IL_0019:  ldloc.1
      IL_001a:  ldfld      int32 XYZ.ABC/Expr::item
      IL_001f:  ceq
      IL_0021:  ret

      .line 100001,100001 : 0,0 ''
      IL_0022:  ldc.i4.0
      IL_0023:  ret

      .line 100001,100001 : 0,0 ''
      IL_0024:  ldarg.1
      IL_0025:  ldnull
      IL_0026:  cgt.un
      IL_0028:  ldc.i4.0
      IL_0029:  ceq
      IL_002b:  ret
    } // end of method Expr::Equals

    .method public hidebysig virtual final 
            instance bool  Equals(object obj) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       20 (0x14)
      .maxstack  4
      .locals init ([0] class XYZ.ABC/Expr V_0)
      .line 13,13 : 14,18 ''
      IL_0000:  ldarg.1
      IL_0001:  isinst     XYZ.ABC/Expr
      IL_0006:  stloc.0
      .line 100001,100001 : 0,0 ''
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0012

      .line 100001,100001 : 0,0 ''
      IL_000a:  ldarg.0
      IL_000b:  ldloc.0
      IL_000c:  callvirt   instance bool XYZ.ABC/Expr::Equals(class XYZ.ABC/Expr)
      IL_0011:  ret

      .line 100001,100001 : 0,0 ''
      IL_0012:  ldc.i4.0
      IL_0013:  ret
    } // end of method Expr::Equals

    .property instance int32 Tag()
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
      .get instance int32 XYZ.ABC/Expr::get_Tag()
    } // end of property Expr::Tag
    .property instance int32 Item()
    {
      .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                  int32,
                                                                                                  int32) = ( 01 00 04 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      .get instance int32 XYZ.ABC/Expr::get_Item()
    } // end of property Expr::Item
  } // end of class Expr

  .class auto ansi serializable nested public beforefieldinit MyExn
         extends [mscorlib]System.Exception
         implements [mscorlib]System.Collections.IStructuralEquatable
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 05 00 00 00 00 00 ) 
    .field assembly int32 Data0@
    .method public specialname rtspecialname 
            instance void  .ctor(int32 data0) cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      int32 XYZ.ABC/MyExn::Data0@
      IL_000d:  ret
    } // end of method MyExn::.ctor

    .method public specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
      IL_0006:  ret
    } // end of method MyExn::.ctor

    .method family specialname rtspecialname 
            instance void  .ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo info,
                                 valuetype [mscorlib]System.Runtime.Serialization.StreamingContext context) cil managed
    {
      // Code size       9 (0x9)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  ldarg.2
      IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo,
                                                                           valuetype [mscorlib]System.Runtime.Serialization.StreamingContext)
      IL_0008:  ret
    } // end of method MyExn::.ctor

    .method public hidebysig specialname 
            instance int32  get_Data0() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      int32 XYZ.ABC/MyExn::Data0@
      IL_0006:  ret
    } // end of method MyExn::get_Data0

    .method public hidebysig virtual instance int32 
            GetHashCode(class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       41 (0x29)
      .maxstack  7
      .locals init ([0] int32 V_0,
               [1] class [mscorlib]System.Collections.IEqualityComparer V_1)
      .line 14,14 : 19,24 ''
      IL_0000:  nop
      .line 100001,100001 : 0,0 ''
      IL_0001:  ldarg.0
      IL_0002:  ldnull
      IL_0003:  cgt.un
      IL_0005:  brfalse.s  IL_0027

      .line 100001,100001 : 0,0 ''
      IL_0007:  ldc.i4.0
      IL_0008:  stloc.0
      IL_0009:  ldc.i4     0x9e3779b9
      IL_000e:  ldarg.1
      IL_000f:  stloc.1
      IL_0010:  ldarg.0
      IL_0011:  castclass  XYZ.ABC/MyExn
      IL_0016:  call       instance int32 XYZ.ABC/MyExn::get_Data0()
      IL_001b:  ldloc.0
      IL_001c:  ldc.i4.6
      IL_001d:  shl
      IL_001e:  ldloc.0
      IL_001f:  ldc.i4.2
      IL_0020:  shr
      IL_0021:  add
      IL_0022:  add
      IL_0023:  add
      IL_0024:  stloc.0
      IL_0025:  ldloc.0
      IL_0026:  ret

      .line 100001,100001 : 0,0 ''
      IL_0027:  ldc.i4.0
      IL_0028:  ret
    } // end of method MyExn::GetHashCode

    .method public hidebysig virtual instance int32 
            GetHashCode() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       12 (0xc)
      .maxstack  8
      .line 14,14 : 19,24 ''
      IL_0000:  ldarg.0
      IL_0001:  call       class [mscorlib]System.Collections.IEqualityComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericEqualityComparer()
      IL_0006:  callvirt   instance int32 XYZ.ABC/MyExn::GetHashCode(class [mscorlib]System.Collections.IEqualityComparer)
      IL_000b:  ret
    } // end of method MyExn::GetHashCode

    .method public hidebysig virtual instance bool 
            Equals(object obj,
                   class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       68 (0x44)
      .maxstack  4
      .locals init ([0] class [mscorlib]System.Exception V_0,
               [1] class [mscorlib]System.Exception V_1,
               [2] class [mscorlib]System.Collections.IEqualityComparer V_2)
      .line 14,14 : 19,24 ''
      IL_0000:  nop
      .line 100001,100001 : 0,0 ''
      IL_0001:  ldarg.0
      IL_0002:  ldnull
      IL_0003:  cgt.un
      IL_0005:  brfalse.s  IL_003c

      .line 100001,100001 : 0,0 ''
      IL_0007:  ldarg.1
      IL_0008:  isinst     [mscorlib]System.Exception
      IL_000d:  stloc.0
      .line 100001,100001 : 0,0 ''
      IL_000e:  ldloc.0
      IL_000f:  brfalse.s  IL_003a

      .line 100001,100001 : 0,0 ''
      IL_0011:  ldloc.0
      IL_0012:  stloc.1
      .line 100001,100001 : 0,0 ''
      IL_0013:  ldloc.0
      IL_0014:  call       bool [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives/IntrinsicFunctions::TypeTestGeneric<class XYZ.ABC/MyExn>(object)
      IL_0019:  brtrue.s   IL_001d

      IL_001b:  br.s       IL_0038

      .line 100001,100001 : 0,0 ''
      IL_001d:  ldarg.2
      IL_001e:  stloc.2
      IL_001f:  ldarg.0
      IL_0020:  castclass  XYZ.ABC/MyExn
      IL_0025:  call       instance int32 XYZ.ABC/MyExn::get_Data0()
      IL_002a:  ldloc.1
      IL_002b:  castclass  XYZ.ABC/MyExn
      IL_0030:  call       instance int32 XYZ.ABC/MyExn::get_Data0()
      IL_0035:  ceq
      IL_0037:  ret

      .line 100001,100001 : 0,0 ''
      IL_0038:  ldc.i4.0
      IL_0039:  ret

      .line 100001,100001 : 0,0 ''
      IL_003a:  ldc.i4.0
      IL_003b:  ret

      .line 100001,100001 : 0,0 ''
      IL_003c:  ldarg.1
      IL_003d:  ldnull
      IL_003e:  cgt.un
      IL_0040:  ldc.i4.0
      IL_0041:  ceq
      IL_0043:  ret
    } // end of method MyExn::Equals

    .method public hidebysig instance bool 
            Equals(class [mscorlib]System.Exception obj) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       60 (0x3c)
      .maxstack  8
      .line 14,14 : 19,24 ''
      IL_0000:  nop
      .line 100001,100001 : 0,0 ''
      IL_0001:  ldarg.0
      IL_0002:  ldnull
      IL_0003:  cgt.un
      IL_0005:  brfalse.s  IL_0034

      .line 100001,100001 : 0,0 ''
      IL_0007:  ldarg.1
      IL_0008:  ldnull
      IL_0009:  cgt.un
      IL_000b:  brfalse.s  IL_0032

      .line 100001,100001 : 0,0 ''
      IL_000d:  ldarg.1
      IL_000e:  call       bool [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives/IntrinsicFunctions::TypeTestGeneric<class XYZ.ABC/MyExn>(object)
      IL_0013:  brtrue.s   IL_0017

      IL_0015:  br.s       IL_0030

      .line 100001,100001 : 0,0 ''
      IL_0017:  ldarg.0
      IL_0018:  castclass  XYZ.ABC/MyExn
      IL_001d:  call       instance int32 XYZ.ABC/MyExn::get_Data0()
      IL_0022:  ldarg.1
      IL_0023:  castclass  XYZ.ABC/MyExn
      IL_0028:  call       instance int32 XYZ.ABC/MyExn::get_Data0()
      IL_002d:  ceq
      IL_002f:  ret

      .line 100001,100001 : 0,0 ''
      IL_0030:  ldc.i4.0
      IL_0031:  ret

      .line 100001,100001 : 0,0 ''
      IL_0032:  ldc.i4.0
      IL_0033:  ret

      .line 100001,100001 : 0,0 ''
      IL_0034:  ldarg.1
      IL_0035:  ldnull
      IL_0036:  cgt.un
      IL_0038:  ldc.i4.0
      IL_0039:  ceq
      IL_003b:  ret
    } // end of method MyExn::Equals

    .method public hidebysig virtual instance bool 
            Equals(object obj) cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       20 (0x14)
      .maxstack  4
      .locals init ([0] class [mscorlib]System.Exception V_0)
      .line 14,14 : 19,24 ''
      IL_0000:  ldarg.1
      IL_0001:  isinst     [mscorlib]System.Exception
      IL_0006:  stloc.0
      .line 100001,100001 : 0,0 ''
      IL_0007:  ldloc.0
      IL_0008:  brfalse.s  IL_0012

      .line 100001,100001 : 0,0 ''
      IL_000a:  ldarg.0
      IL_000b:  ldloc.0
      IL_000c:  callvirt   instance bool XYZ.ABC/MyExn::Equals(class [mscorlib]System.Exception)
      IL_0011:  ret

      .line 100001,100001 : 0,0 ''
      IL_0012:  ldc.i4.0
      IL_0013:  ret
    } // end of method MyExn::Equals

    .property instance int32 Data0()
    {
      .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                  int32) = ( 01 00 04 00 00 00 00 00 00 00 00 00 ) 
      .get instance int32 XYZ.ABC/MyExn::get_Data0()
    } // end of property MyExn::Data0
  } // end of class MyExn

  .class auto ansi serializable nested public A
         extends [mscorlib]System.Object
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 03 00 00 00 00 00 ) 
    .field assembly string x
    .method public specialname rtspecialname 
            instance void  .ctor(string x) cil managed
    {
      // Code size       16 (0x10)
      .maxstack  8
      .line 100001,100001 : 0,0 ''
      IL_0000:  ldarg.0
      IL_0001:  callvirt   instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  pop
      .line 15,15 : 16,17 ''
      IL_0008:  ldarg.0
      IL_0009:  ldarg.1
      IL_000a:  stfld      string XYZ.ABC/A::x
      .line 15,15 : 14,15 ''
      IL_000f:  ret
    } // end of method A::.ctor

    .method public hidebysig specialname 
            instance string  get_X() cil managed
    {
      // Code size       9 (0x9)
      .maxstack  3
      .locals init ([0] class XYZ.ABC/A __)
      .line 100001,100001 : 0,0 ''
      IL_0000:  ldarg.0
      IL_0001:  stloc.0
      .line 15,15 : 42,43 ''
      IL_0002:  ldarg.0
      IL_0003:  ldfld      string XYZ.ABC/A::x
      IL_0008:  ret
    } // end of method A::get_X

    .property instance string X()
    {
      .get instance string XYZ.ABC/A::get_X()
    } // end of property A::X
  } // end of class A

  .class abstract auto ansi sealed nested public ABC
         extends [mscorlib]System.Object
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
    .class auto autochar serializable sealed nested public beforefieldinit Expr
           extends [mscorlib]System.Object
           implements class [mscorlib]System.IEquatable`1<class XYZ.ABC/ABC/Expr>,
                      [mscorlib]System.Collections.IStructuralEquatable,
                      class [mscorlib]System.IComparable`1<class XYZ.ABC/ABC/Expr>,
                      [mscorlib]System.IComparable,
                      [mscorlib]System.Collections.IStructuralComparable
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 15 7B 5F 5F 44 65 62 75 67 44 69 73 70 6C   // ...{__DebugDispl
                                                                                                     61 79 28 29 2C 6E 71 7D 00 00 )                   // ay(),nq}..
      .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 01 00 00 00 00 00 ) 
      .field assembly initonly int32 item
      .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      .method public static class XYZ.ABC/ABC/Expr 
              NewNum(int32 item) cil managed
      {
        .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                    int32) = ( 01 00 08 00 00 00 00 00 00 00 00 00 ) 
        // Code size       7 (0x7)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  newobj     instance void XYZ.ABC/ABC/Expr::.ctor(int32)
        IL_0006:  ret
      } // end of method Expr::NewNum

      .method assembly specialname rtspecialname 
              instance void  .ctor(int32 item) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       14 (0xe)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
        IL_0006:  ldarg.0
        IL_0007:  ldarg.1
        IL_0008:  stfld      int32 XYZ.ABC/ABC/Expr::item
        IL_000d:  ret
      } // end of method Expr::.ctor

      .method public hidebysig instance int32 
              get_Item() cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       7 (0x7)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_0006:  ret
      } // end of method Expr::get_Item

      .method public hidebysig instance int32 
              get_Tag() cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       4 (0x4)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  pop
        IL_0002:  ldc.i4.0
        IL_0003:  ret
      } // end of method Expr::get_Tag

      .method assembly hidebysig specialname 
              instance object  __DebugDisplay() cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       22 (0x16)
        .maxstack  8
        IL_0000:  ldstr      "%+0.8A"
        IL_0005:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/ABC/Expr,string>,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string,string>::.ctor(string)
        IL_000a:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.ExtraTopLevelOperators::PrintFormatToString<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/ABC/Expr,string>>(class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string>)
        IL_000f:  ldarg.0
        IL_0010:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/ABC/Expr,string>::Invoke(!0)
        IL_0015:  ret
      } // end of method Expr::__DebugDisplay

      .method public strict virtual instance string 
              ToString() cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       22 (0x16)
        .maxstack  8
        IL_0000:  ldstr      "%+A"
        IL_0005:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/ABC/Expr,string>,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string,class XYZ.ABC/ABC/Expr>::.ctor(string)
        IL_000a:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.ExtraTopLevelOperators::PrintFormatToString<class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/ABC/Expr,string>>(class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [FSharp.Core]Microsoft.FSharp.Core.Unit,string,string>)
        IL_000f:  ldarg.0
        IL_0010:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class XYZ.ABC/ABC/Expr,string>::Invoke(!0)
        IL_0015:  ret
      } // end of method Expr::ToString

      .method public hidebysig virtual final 
              instance int32  CompareTo(class XYZ.ABC/ABC/Expr obj) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       65 (0x41)
        .maxstack  4
        .locals init ([0] class XYZ.ABC/ABC/Expr V_0,
                 [1] class XYZ.ABC/ABC/Expr V_1,
                 [2] class [mscorlib]System.Collections.IComparer V_2,
                 [3] int32 V_3,
                 [4] int32 V_4)
        .line 23,23 : 18,22 ''
        IL_0000:  nop
        .line 100001,100001 : 0,0 ''
        IL_0001:  ldarg.0
        IL_0002:  ldnull
        IL_0003:  cgt.un
        IL_0005:  brfalse.s  IL_0037

        .line 100001,100001 : 0,0 ''
        IL_0007:  ldarg.1
        IL_0008:  ldnull
        IL_0009:  cgt.un
        IL_000b:  brfalse.s  IL_0035

        .line 100001,100001 : 0,0 ''
        IL_000d:  ldarg.0
        IL_000e:  pop
        .line 100001,100001 : 0,0 ''
        IL_000f:  ldarg.0
        IL_0010:  stloc.0
        IL_0011:  ldarg.1
        IL_0012:  stloc.1
        IL_0013:  call       class [mscorlib]System.Collections.IComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericComparer()
        IL_0018:  stloc.2
        IL_0019:  ldloc.0
        IL_001a:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_001f:  stloc.3
        IL_0020:  ldloc.1
        IL_0021:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_0026:  stloc.s    V_4
        .line 100001,100001 : 0,0 ''
        IL_0028:  ldloc.3
        IL_0029:  ldloc.s    V_4
        IL_002b:  bge.s      IL_002f

        .line 100001,100001 : 0,0 ''
        IL_002d:  ldc.i4.m1
        IL_002e:  ret

        .line 100001,100001 : 0,0 ''
        IL_002f:  ldloc.3
        IL_0030:  ldloc.s    V_4
        IL_0032:  cgt
        IL_0034:  ret

        .line 100001,100001 : 0,0 ''
        IL_0035:  ldc.i4.1
        IL_0036:  ret

        .line 100001,100001 : 0,0 ''
        IL_0037:  ldarg.1
        IL_0038:  ldnull
        IL_0039:  cgt.un
        IL_003b:  brfalse.s  IL_003f

        .line 100001,100001 : 0,0 ''
        IL_003d:  ldc.i4.m1
        IL_003e:  ret

        .line 100001,100001 : 0,0 ''
        IL_003f:  ldc.i4.0
        IL_0040:  ret
      } // end of method Expr::CompareTo

      .method public hidebysig virtual final 
              instance int32  CompareTo(object obj) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       13 (0xd)
        .maxstack  8
        .line 23,23 : 18,22 ''
        IL_0000:  ldarg.0
        IL_0001:  ldarg.1
        IL_0002:  unbox.any  XYZ.ABC/ABC/Expr
        IL_0007:  callvirt   instance int32 XYZ.ABC/ABC/Expr::CompareTo(class XYZ.ABC/ABC/Expr)
        IL_000c:  ret
      } // end of method Expr::CompareTo

      .method public hidebysig virtual final 
              instance int32  CompareTo(object obj,
                                        class [mscorlib]System.Collections.IComparer comp) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       80 (0x50)
        .maxstack  4
        .locals init ([0] class XYZ.ABC/ABC/Expr V_0,
                 [1] class XYZ.ABC/ABC/Expr V_1,
                 [2] class XYZ.ABC/ABC/Expr V_2,
                 [3] class [mscorlib]System.Collections.IComparer V_3,
                 [4] int32 V_4,
                 [5] int32 V_5)
        .line 23,23 : 18,22 ''
        IL_0000:  ldarg.1
        IL_0001:  unbox.any  XYZ.ABC/ABC/Expr
        IL_0006:  stloc.0
        .line 100001,100001 : 0,0 ''
        IL_0007:  ldarg.0
        IL_0008:  ldnull
        IL_0009:  cgt.un
        IL_000b:  brfalse.s  IL_0041

        .line 100001,100001 : 0,0 ''
        IL_000d:  ldarg.1
        IL_000e:  unbox.any  XYZ.ABC/ABC/Expr
        IL_0013:  ldnull
        IL_0014:  cgt.un
        IL_0016:  brfalse.s  IL_003f

        .line 100001,100001 : 0,0 ''
        IL_0018:  ldarg.0
        IL_0019:  pop
        .line 100001,100001 : 0,0 ''
        IL_001a:  ldarg.0
        IL_001b:  stloc.1
        IL_001c:  ldloc.0
        IL_001d:  stloc.2
        IL_001e:  ldarg.2
        IL_001f:  stloc.3
        IL_0020:  ldloc.1
        IL_0021:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_0026:  stloc.s    V_4
        IL_0028:  ldloc.2
        IL_0029:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_002e:  stloc.s    V_5
        .line 100001,100001 : 0,0 ''
        IL_0030:  ldloc.s    V_4
        IL_0032:  ldloc.s    V_5
        IL_0034:  bge.s      IL_0038

        .line 100001,100001 : 0,0 ''
        IL_0036:  ldc.i4.m1
        IL_0037:  ret

        .line 100001,100001 : 0,0 ''
        IL_0038:  ldloc.s    V_4
        IL_003a:  ldloc.s    V_5
        IL_003c:  cgt
        IL_003e:  ret

        .line 100001,100001 : 0,0 ''
        IL_003f:  ldc.i4.1
        IL_0040:  ret

        .line 100001,100001 : 0,0 ''
        IL_0041:  ldarg.1
        IL_0042:  unbox.any  XYZ.ABC/ABC/Expr
        IL_0047:  ldnull
        IL_0048:  cgt.un
        IL_004a:  brfalse.s  IL_004e

        .line 100001,100001 : 0,0 ''
        IL_004c:  ldc.i4.m1
        IL_004d:  ret

        .line 100001,100001 : 0,0 ''
        IL_004e:  ldc.i4.0
        IL_004f:  ret
      } // end of method Expr::CompareTo

      .method public hidebysig virtual final 
              instance int32  GetHashCode(class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       42 (0x2a)
        .maxstack  7
        .locals init ([0] int32 V_0,
                 [1] class XYZ.ABC/ABC/Expr V_1,
                 [2] class [mscorlib]System.Collections.IEqualityComparer V_2)
        .line 23,23 : 18,22 ''
        IL_0000:  nop
        .line 100001,100001 : 0,0 ''
        IL_0001:  ldarg.0
        IL_0002:  ldnull
        IL_0003:  cgt.un
        IL_0005:  brfalse.s  IL_0028

        .line 100001,100001 : 0,0 ''
        IL_0007:  ldc.i4.0
        IL_0008:  stloc.0
        .line 100001,100001 : 0,0 ''
        IL_0009:  ldarg.0
        IL_000a:  pop
        .line 100001,100001 : 0,0 ''
        IL_000b:  ldarg.0
        IL_000c:  stloc.1
        IL_000d:  ldc.i4.0
        IL_000e:  stloc.0
        IL_000f:  ldc.i4     0x9e3779b9
        IL_0014:  ldarg.1
        IL_0015:  stloc.2
        IL_0016:  ldloc.1
        IL_0017:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_001c:  ldloc.0
        IL_001d:  ldc.i4.6
        IL_001e:  shl
        IL_001f:  ldloc.0
        IL_0020:  ldc.i4.2
        IL_0021:  shr
        IL_0022:  add
        IL_0023:  add
        IL_0024:  add
        IL_0025:  stloc.0
        IL_0026:  ldloc.0
        IL_0027:  ret

        .line 100001,100001 : 0,0 ''
        IL_0028:  ldc.i4.0
        IL_0029:  ret
      } // end of method Expr::GetHashCode

      .method public hidebysig virtual final 
              instance int32  GetHashCode() cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       12 (0xc)
        .maxstack  8
        .line 23,23 : 18,22 ''
        IL_0000:  ldarg.0
        IL_0001:  call       class [mscorlib]System.Collections.IEqualityComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericEqualityComparer()
        IL_0006:  callvirt   instance int32 XYZ.ABC/ABC/Expr::GetHashCode(class [mscorlib]System.Collections.IEqualityComparer)
        IL_000b:  ret
      } // end of method Expr::GetHashCode

      .method public hidebysig virtual final 
              instance bool  Equals(object obj,
                                    class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       53 (0x35)
        .maxstack  4
        .locals init ([0] class XYZ.ABC/ABC/Expr V_0,
                 [1] class XYZ.ABC/ABC/Expr V_1,
                 [2] class XYZ.ABC/ABC/Expr V_2,
                 [3] class XYZ.ABC/ABC/Expr V_3,
                 [4] class [mscorlib]System.Collections.IEqualityComparer V_4)
        .line 23,23 : 18,22 ''
        IL_0000:  nop
        .line 100001,100001 : 0,0 ''
        IL_0001:  ldarg.0
        IL_0002:  ldnull
        IL_0003:  cgt.un
        IL_0005:  brfalse.s  IL_002d

        .line 100001,100001 : 0,0 ''
        IL_0007:  ldarg.1
        IL_0008:  isinst     XYZ.ABC/ABC/Expr
        IL_000d:  stloc.0
        .line 100001,100001 : 0,0 ''
        IL_000e:  ldloc.0
        IL_000f:  brfalse.s  IL_002b

        .line 100001,100001 : 0,0 ''
        IL_0011:  ldloc.0
        IL_0012:  stloc.1
        .line 100001,100001 : 0,0 ''
        IL_0013:  ldarg.0
        IL_0014:  pop
        .line 100001,100001 : 0,0 ''
        IL_0015:  ldarg.0
        IL_0016:  stloc.2
        IL_0017:  ldloc.1
        IL_0018:  stloc.3
        IL_0019:  ldarg.2
        IL_001a:  stloc.s    V_4
        IL_001c:  ldloc.2
        IL_001d:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_0022:  ldloc.3
        IL_0023:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_0028:  ceq
        IL_002a:  ret

        .line 100001,100001 : 0,0 ''
        IL_002b:  ldc.i4.0
        IL_002c:  ret

        .line 100001,100001 : 0,0 ''
        IL_002d:  ldarg.1
        IL_002e:  ldnull
        IL_002f:  cgt.un
        IL_0031:  ldc.i4.0
        IL_0032:  ceq
        IL_0034:  ret
      } // end of method Expr::Equals

      .method public hidebysig virtual final 
              instance bool  Equals(class XYZ.ABC/ABC/Expr obj) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       44 (0x2c)
        .maxstack  4
        .locals init ([0] class XYZ.ABC/ABC/Expr V_0,
                 [1] class XYZ.ABC/ABC/Expr V_1)
        .line 23,23 : 18,22 ''
        IL_0000:  nop
        .line 100001,100001 : 0,0 ''
        IL_0001:  ldarg.0
        IL_0002:  ldnull
        IL_0003:  cgt.un
        IL_0005:  brfalse.s  IL_0024

        .line 100001,100001 : 0,0 ''
        IL_0007:  ldarg.1
        IL_0008:  ldnull
        IL_0009:  cgt.un
        IL_000b:  brfalse.s  IL_0022

        .line 100001,100001 : 0,0 ''
        IL_000d:  ldarg.0
        IL_000e:  pop
        .line 100001,100001 : 0,0 ''
        IL_000f:  ldarg.0
        IL_0010:  stloc.0
        IL_0011:  ldarg.1
        IL_0012:  stloc.1
        IL_0013:  ldloc.0
        IL_0014:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_0019:  ldloc.1
        IL_001a:  ldfld      int32 XYZ.ABC/ABC/Expr::item
        IL_001f:  ceq
        IL_0021:  ret

        .line 100001,100001 : 0,0 ''
        IL_0022:  ldc.i4.0
        IL_0023:  ret

        .line 100001,100001 : 0,0 ''
        IL_0024:  ldarg.1
        IL_0025:  ldnull
        IL_0026:  cgt.un
        IL_0028:  ldc.i4.0
        IL_0029:  ceq
        IL_002b:  ret
      } // end of method Expr::Equals

      .method public hidebysig virtual final 
              instance bool  Equals(object obj) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       20 (0x14)
        .maxstack  4
        .locals init ([0] class XYZ.ABC/ABC/Expr V_0)
        .line 23,23 : 18,22 ''
        IL_0000:  ldarg.1
        IL_0001:  isinst     XYZ.ABC/ABC/Expr
        IL_0006:  stloc.0
        .line 100001,100001 : 0,0 ''
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_0012

        .line 100001,100001 : 0,0 ''
        IL_000a:  ldarg.0
        IL_000b:  ldloc.0
        IL_000c:  callvirt   instance bool XYZ.ABC/ABC/Expr::Equals(class XYZ.ABC/ABC/Expr)
        IL_0011:  ret

        .line 100001,100001 : 0,0 ''
        IL_0012:  ldc.i4.0
        IL_0013:  ret
      } // end of method Expr::Equals

      .property instance int32 Tag()
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
        .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
        .get instance int32 XYZ.ABC/ABC/Expr::get_Tag()
      } // end of property Expr::Tag
      .property instance int32 Item()
      {
        .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                    int32,
                                                                                                    int32) = ( 01 00 04 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
        .get instance int32 XYZ.ABC/ABC/Expr::get_Item()
      } // end of property Expr::Item
    } // end of class Expr

    .class auto ansi serializable nested public beforefieldinit MyExn
           extends [mscorlib]System.Exception
           implements [mscorlib]System.Collections.IStructuralEquatable
    {
      .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 05 00 00 00 00 00 ) 
      .field assembly int32 Data0@
      .method public specialname rtspecialname 
              instance void  .ctor(int32 data0) cil managed
      {
        // Code size       14 (0xe)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
        IL_0006:  ldarg.0
        IL_0007:  ldarg.1
        IL_0008:  stfld      int32 XYZ.ABC/ABC/MyExn::Data0@
        IL_000d:  ret
      } // end of method MyExn::.ctor

      .method public specialname rtspecialname 
              instance void  .ctor() cil managed
      {
        // Code size       7 (0x7)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  call       instance void [mscorlib]System.Exception::.ctor()
        IL_0006:  ret
      } // end of method MyExn::.ctor

      .method family specialname rtspecialname 
              instance void  .ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo info,
                                   valuetype [mscorlib]System.Runtime.Serialization.StreamingContext context) cil managed
      {
        // Code size       9 (0x9)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldarg.1
        IL_0002:  ldarg.2
        IL_0003:  call       instance void [mscorlib]System.Exception::.ctor(class [mscorlib]System.Runtime.Serialization.SerializationInfo,
                                                                             valuetype [mscorlib]System.Runtime.Serialization.StreamingContext)
        IL_0008:  ret
      } // end of method MyExn::.ctor

      .method public hidebysig specialname 
              instance int32  get_Data0() cil managed
      {
        // Code size       7 (0x7)
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  ldfld      int32 XYZ.ABC/ABC/MyExn::Data0@
        IL_0006:  ret
      } // end of method MyExn::get_Data0

      .method public hidebysig virtual instance int32 
              GetHashCode(class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       41 (0x29)
        .maxstack  7
        .locals init ([0] int32 V_0,
                 [1] class [mscorlib]System.Collections.IEqualityComparer V_1)
        .line 24,24 : 23,28 ''
        IL_0000:  nop
        .line 100001,100001 : 0,0 ''
        IL_0001:  ldarg.0
        IL_0002:  ldnull
        IL_0003:  cgt.un
        IL_0005:  brfalse.s  IL_0027

        .line 100001,100001 : 0,0 ''
        IL_0007:  ldc.i4.0
        IL_0008:  stloc.0
        IL_0009:  ldc.i4     0x9e3779b9
        IL_000e:  ldarg.1
        IL_000f:  stloc.1
        IL_0010:  ldarg.0
        IL_0011:  castclass  XYZ.ABC/ABC/MyExn
        IL_0016:  call       instance int32 XYZ.ABC/ABC/MyExn::get_Data0()
        IL_001b:  ldloc.0
        IL_001c:  ldc.i4.6
        IL_001d:  shl
        IL_001e:  ldloc.0
        IL_001f:  ldc.i4.2
        IL_0020:  shr
        IL_0021:  add
        IL_0022:  add
        IL_0023:  add
        IL_0024:  stloc.0
        IL_0025:  ldloc.0
        IL_0026:  ret

        .line 100001,100001 : 0,0 ''
        IL_0027:  ldc.i4.0
        IL_0028:  ret
      } // end of method MyExn::GetHashCode

      .method public hidebysig virtual instance int32 
              GetHashCode() cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       12 (0xc)
        .maxstack  8
        .line 24,24 : 23,28 ''
        IL_0000:  ldarg.0
        IL_0001:  call       class [mscorlib]System.Collections.IEqualityComparer [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives::get_GenericEqualityComparer()
        IL_0006:  callvirt   instance int32 XYZ.ABC/ABC/MyExn::GetHashCode(class [mscorlib]System.Collections.IEqualityComparer)
        IL_000b:  ret
      } // end of method MyExn::GetHashCode

      .method public hidebysig virtual instance bool 
              Equals(object obj,
                     class [mscorlib]System.Collections.IEqualityComparer comp) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       68 (0x44)
        .maxstack  4
        .locals init ([0] class [mscorlib]System.Exception V_0,
                 [1] class [mscorlib]System.Exception V_1,
                 [2] class [mscorlib]System.Collections.IEqualityComparer V_2)
        .line 24,24 : 23,28 ''
        IL_0000:  nop
        .line 100001,100001 : 0,0 ''
        IL_0001:  ldarg.0
        IL_0002:  ldnull
        IL_0003:  cgt.un
        IL_0005:  brfalse.s  IL_003c

        .line 100001,100001 : 0,0 ''
        IL_0007:  ldarg.1
        IL_0008:  isinst     [mscorlib]System.Exception
        IL_000d:  stloc.0
        .line 100001,100001 : 0,0 ''
        IL_000e:  ldloc.0
        IL_000f:  brfalse.s  IL_003a

        .line 100001,100001 : 0,0 ''
        IL_0011:  ldloc.0
        IL_0012:  stloc.1
        .line 100001,100001 : 0,0 ''
        IL_0013:  ldloc.0
        IL_0014:  call       bool [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives/IntrinsicFunctions::TypeTestGeneric<class XYZ.ABC/ABC/MyExn>(object)
        IL_0019:  brtrue.s   IL_001d

        IL_001b:  br.s       IL_0038

        .line 100001,100001 : 0,0 ''
        IL_001d:  ldarg.2
        IL_001e:  stloc.2
        IL_001f:  ldarg.0
        IL_0020:  castclass  XYZ.ABC/ABC/MyExn
        IL_0025:  call       instance int32 XYZ.ABC/ABC/MyExn::get_Data0()
        IL_002a:  ldloc.1
        IL_002b:  castclass  XYZ.ABC/ABC/MyExn
        IL_0030:  call       instance int32 XYZ.ABC/ABC/MyExn::get_Data0()
        IL_0035:  ceq
        IL_0037:  ret

        .line 100001,100001 : 0,0 ''
        IL_0038:  ldc.i4.0
        IL_0039:  ret

        .line 100001,100001 : 0,0 ''
        IL_003a:  ldc.i4.0
        IL_003b:  ret

        .line 100001,100001 : 0,0 ''
        IL_003c:  ldarg.1
        IL_003d:  ldnull
        IL_003e:  cgt.un
        IL_0040:  ldc.i4.0
        IL_0041:  ceq
        IL_0043:  ret
      } // end of method MyExn::Equals

      .method public hidebysig instance bool 
              Equals(class [mscorlib]System.Exception obj) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       60 (0x3c)
        .maxstack  8
        .line 24,24 : 23,28 ''
        IL_0000:  nop
        .line 100001,100001 : 0,0 ''
        IL_0001:  ldarg.0
        IL_0002:  ldnull
        IL_0003:  cgt.un
        IL_0005:  brfalse.s  IL_0034

        .line 100001,100001 : 0,0 ''
        IL_0007:  ldarg.1
        IL_0008:  ldnull
        IL_0009:  cgt.un
        IL_000b:  brfalse.s  IL_0032

        .line 100001,100001 : 0,0 ''
        IL_000d:  ldarg.1
        IL_000e:  call       bool [FSharp.Core]Microsoft.FSharp.Core.LanguagePrimitives/IntrinsicFunctions::TypeTestGeneric<class XYZ.ABC/ABC/MyExn>(object)
        IL_0013:  brtrue.s   IL_0017

        IL_0015:  br.s       IL_0030

        .line 100001,100001 : 0,0 ''
        IL_0017:  ldarg.0
        IL_0018:  castclass  XYZ.ABC/ABC/MyExn
        IL_001d:  call       instance int32 XYZ.ABC/ABC/MyExn::get_Data0()
        IL_0022:  ldarg.1
        IL_0023:  castclass  XYZ.ABC/ABC/MyExn
        IL_0028:  call       instance int32 XYZ.ABC/ABC/MyExn::get_Data0()
        IL_002d:  ceq
        IL_002f:  ret

        .line 100001,100001 : 0,0 ''
        IL_0030:  ldc.i4.0
        IL_0031:  ret

        .line 100001,100001 : 0,0 ''
        IL_0032:  ldc.i4.0
        IL_0033:  ret

        .line 100001,100001 : 0,0 ''
        IL_0034:  ldarg.1
        IL_0035:  ldnull
        IL_0036:  cgt.un
        IL_0038:  ldc.i4.0
        IL_0039:  ceq
        IL_003b:  ret
      } // end of method MyExn::Equals

      .method public hidebysig virtual instance bool 
              Equals(object obj) cil managed
      {
        .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
        // Code size       20 (0x14)
        .maxstack  4
        .locals init ([0] class [mscorlib]System.Exception V_0)
        .line 24,24 : 23,28 ''
        IL_0000:  ldarg.1
        IL_0001:  isinst     [mscorlib]System.Exception
        IL_0006:  stloc.0
        .line 100001,100001 : 0,0 ''
        IL_0007:  ldloc.0
        IL_0008:  brfalse.s  IL_0012

        .line 100001,100001 : 0,0 ''
        IL_000a:  ldarg.0
        IL_000b:  ldloc.0
        IL_000c:  callvirt   instance bool XYZ.ABC/ABC/MyExn::Equals(class [mscorlib]System.Exception)
        IL_0011:  ret

        .line 100001,100001 : 0,0 ''
        IL_0012:  ldc.i4.0
        IL_0013:  ret
      } // end of method MyExn::Equals

      .property instance int32 Data0()
      {
        .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags,
                                                                                                    int32) = ( 01 00 04 00 00 00 00 00 00 00 00 00 ) 
        .get instance int32 XYZ.ABC/ABC/MyExn::get_Data0()
      } // end of property MyExn::Data0
    } // end of class MyExn

    .class auto ansi serializable nested public A
           extends [mscorlib]System.Object
    {
      .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 03 00 00 00 00 00 ) 
      .field assembly string x
      .method public specialname rtspecialname 
              instance void  .ctor(string x) cil managed
      {
        // Code size       16 (0x10)
        .maxstack  8
        .line 100001,100001 : 0,0 ''
        IL_0000:  ldarg.0
        IL_0001:  callvirt   instance void [mscorlib]System.Object::.ctor()
        IL_0006:  ldarg.0
        IL_0007:  pop
        .line 25,25 : 20,21 ''
        IL_0008:  ldarg.0
        IL_0009:  ldarg.1
        IL_000a:  stfld      string XYZ.ABC/ABC/A::x
        .line 25,25 : 18,19 ''
        IL_000f:  ret
      } // end of method A::.ctor

      .method public hidebysig specialname 
              instance string  get_X() cil managed
      {
        // Code size       9 (0x9)
        .maxstack  3
        .locals init ([0] class XYZ.ABC/ABC/A __)
        .line 100001,100001 : 0,0 ''
        IL_0000:  ldarg.0
        IL_0001:  stloc.0
        .line 25,25 : 46,47 ''
        IL_0002:  ldarg.0
        IL_0003:  ldfld      string XYZ.ABC/ABC/A::x
        IL_0008:  ret
      } // end of method A::get_X

      .property instance string X()
      {
        .get instance string XYZ.ABC/ABC/A::get_X()
      } // end of property A::X
    } // end of class A

    .method public static int32  'add'(int32 x,
                                       int32 y) cil managed
    {
      .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
      // Code size       4 (0x4)
      .maxstack  8
      .line 28,28 : 27,32 ''
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  add
      IL_0003:  ret
    } // end of method ABC::'add'

    .method public specialname static string 
            get_greeting() cil managed
    {
      .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       6 (0x6)
      .maxstack  8
      IL_0000:  ldstr      "hello"
      IL_0005:  ret
    } // end of method ABC::get_greeting

    .property string greeting()
    {
      .get string XYZ.ABC/ABC::get_greeting()
    } // end of property ABC::greeting
  } // end of class ABC

  .method public static int32  'add'(int32 x,
                                     int32 y) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    // Code size       4 (0x4)
    .maxstack  8
    .line 18,18 : 23,28 ''
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  add
    IL_0003:  ret
  } // end of method ABC::'add'

  .method public specialname static string 
          get_greeting() cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       6 (0x6)
    .maxstack  8
    IL_0000:  ldstr      "hello"
    IL_0005:  ret
  } // end of method ABC::get_greeting

  .property string greeting()
  {
    .get string XYZ.ABC::get_greeting()
  } // end of property ABC::greeting
} // end of class XYZ.ABC

.class private abstract auto ansi sealed '<StartupCode$ToplevelNamespace>'.$ToplevelNamespace
       extends [mscorlib]System.Object
{
  .field static assembly int32 init@
  .custom instance void [mscorlib]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .method private specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  3
    .locals init ([0] string 'greeting (shadowed)',
             [1] string greeting)
    .line 19,19 : 9,31 ''
    IL_0000:  call       string XYZ.ABC::get_greeting()
    IL_0005:  stloc.0
    .line 29,29 : 13,35 ''
    IL_0006:  call       string XYZ.ABC/ABC::get_greeting()
    IL_000b:  stloc.1
    IL_000c:  ret
  } // end of method $ToplevelNamespace::.cctor

} // end of class '<StartupCode$ToplevelNamespace>'.$ToplevelNamespace


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
