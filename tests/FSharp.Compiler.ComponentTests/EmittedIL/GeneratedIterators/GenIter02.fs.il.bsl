
//  Microsoft (R) .NET IL Disassembler.  Version 5.0.0-preview.7.20364.11



// Metadata version: v4.0.30319
.assembly extern System.Runtime
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly extern FSharp.Core
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly GenIter02
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.FSharpInterfaceDataVersionAttribute::.ctor(int32,
                                                                                                      int32,
                                                                                                      int32) = ( 01 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [System.Runtime]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [System.Runtime]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 03 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.mresource public FSharpSignatureData.GenIter02
{
  // Offset: 0x00000000 Length: 0x00000233
  // WARNING: managed resource file FSharpSignatureData.GenIter02 created
}
.mresource public FSharpOptimizationData.GenIter02
{
  // Offset: 0x00000238 Length: 0x0000007B
  // WARNING: managed resource file FSharpOptimizationData.GenIter02 created
}
.module GenIter02.exe
// MVID: {624FDC53-A109-4EA0-A745-038353DC4F62}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x00000203809D0000


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi sealed GenIter02
       extends [System.Runtime]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .method public static class [FSharp.Core]Microsoft.FSharp.Collections.FSharpList`1<int32> 
          squaresOfOneToTenB() cil managed
  {
    // Code size       94 (0x5e)
    .maxstack  5
    .locals init (valuetype [FSharp.Core]Microsoft.FSharp.Core.CompilerServices.ListCollector`1<int32> V_0,
             class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32> V_1,
             class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> V_2,
             int32 V_3,
             class [System.Runtime]System.IDisposable V_4)
    IL_0000:  nop
    IL_0001:  ldc.i4.0
    IL_0002:  ldc.i4.1
    IL_0003:  ldc.i4.2
    IL_0004:  call       class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32)
    IL_0009:  callvirt   instance class [System.Runtime]System.Collections.Generic.IEnumerator`1<!0> class [System.Runtime]System.Collections.Generic.IEnumerable`1<int32>::GetEnumerator()
    IL_000e:  stloc.1
    .try
    {
      IL_000f:  br.s       IL_0033

      IL_0011:  ldloc.1
      IL_0012:  callvirt   instance !0 class [System.Runtime]System.Collections.Generic.IEnumerator`1<int32>::get_Current()
      IL_0017:  stloc.3
      IL_0018:  ldstr      "hello"
      IL_001d:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [System.Runtime]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>::.ctor(string)
      IL_0022:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.ExtraTopLevelOperators::PrintFormatLine<class [FSharp.Core]Microsoft.FSharp.Core.Unit>(class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [System.Runtime]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
      IL_0027:  pop
      IL_0028:  ldloca.s   V_0
      IL_002a:  ldloc.3
      IL_002b:  ldloc.3
      IL_002c:  mul
      IL_002d:  call       instance void valuetype [FSharp.Core]Microsoft.FSharp.Core.CompilerServices.ListCollector`1<int32>::Add(!0)
      IL_0032:  nop
      IL_0033:  ldloc.1
      IL_0034:  callvirt   instance bool [System.Runtime]System.Collections.IEnumerator::MoveNext()
      IL_0039:  brtrue.s   IL_0011

      IL_003b:  ldnull
      IL_003c:  stloc.2
      IL_003d:  leave.s    IL_0054

    }  // end .try
    finally
    {
      IL_003f:  ldloc.1
      IL_0040:  isinst     [System.Runtime]System.IDisposable
      IL_0045:  stloc.s    V_4
      IL_0047:  ldloc.s    V_4
      IL_0049:  brfalse.s  IL_0053

      IL_004b:  ldloc.s    V_4
      IL_004d:  callvirt   instance void [System.Runtime]System.IDisposable::Dispose()
      IL_0052:  endfinally
      IL_0053:  endfinally
    }  // end handler
    IL_0054:  ldloc.2
    IL_0055:  pop
    IL_0056:  ldloca.s   V_0
    IL_0058:  call       instance class [FSharp.Core]Microsoft.FSharp.Collections.FSharpList`1<!0> valuetype [FSharp.Core]Microsoft.FSharp.Core.CompilerServices.ListCollector`1<int32>::Close()
    IL_005d:  ret
  } // end of method GenIter02::squaresOfOneToTenB

} // end of class GenIter02

.class private abstract auto ansi sealed '<StartupCode$GenIter02>'.$GenIter02
       extends [System.Runtime]System.Object
{
  .method public static void  main@() cil managed
  {
    .entrypoint
    // Code size       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method $GenIter02::main@

} // end of class '<StartupCode$GenIter02>'.$GenIter02


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file C:\kevinransom\fsharp\artifacts\bin\FSharp.Compiler.ComponentTests\Debug\net472\tests\EmittedIL\GeneratedIterators\GenIter02_fs\GenIter02.res
