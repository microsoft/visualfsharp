
//  Microsoft (R) .NET IL Disassembler.  Version 5.0.0-preview.7.20364.11



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern FSharp.Core
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 6:0:0:0
}
.assembly extern netstandard
{
  .publickeytoken = (CC 7B 13 FF CD 2D DD 51 )                         // .{...-.Q
  .ver 2:0:0:0
}
.assembly ForLoopWithStep1
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.FSharpInterfaceDataVersionAttribute::.ctor(int32,
                                                                                                      int32,
                                                                                                      int32) = ( 01 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 01 00 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.mresource public FSharpSignatureData.ForLoopWithStep1
{
  // Offset: 0x00000000 Length: 0x0000025A
  // WARNING: managed resource file FSharpSignatureData.ForLoopWithStep1 created
}
.mresource public FSharpOptimizationData.ForLoopWithStep1
{
  // Offset: 0x00000260 Length: 0x0000007B
  // WARNING: managed resource file FSharpOptimizationData.ForLoopWithStep1 created
}
.module ForLoopWithStep1.exe
// MVID: {62E35ED9-6AFE-A894-A745-0383D95EE362}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x000001F9D8160000


// =============== CLASS MEMBERS DECLARATION ===================

.class public abstract auto ansi sealed ForLoopWithStep1
       extends [mscorlib]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .method public static void  loop(int32 n,
                                   int32 step,
                                   int32 m) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 03 00 00 00 01 00 00 00 01 00 00 00 01 00 
                                                                                                                    00 00 00 00 ) 
    // Code size       91 (0x5b)
    .maxstack  7
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit> V_3)
    IL_0000:  ldarg.0
    IL_0001:  stloc.2
    IL_0002:  ldarg.1
    IL_0003:  stloc.1
    IL_0004:  ldloc.1
    IL_0005:  brtrue.s   IL_0017

    IL_0007:  ldstr      "The step of a range cannot be zero."
    IL_000c:  ldstr      "step"
    IL_0011:  newobj     instance void [mscorlib]System.ArgumentException::.ctor(string,
                                                                                 string)
    IL_0016:  throw

    IL_0017:  ldarg.2
    IL_0018:  stloc.0
    IL_0019:  br.s       IL_004a

    IL_001b:  ldstr      "%P()"
    IL_0020:  ldc.i4.1
    IL_0021:  newarr     [mscorlib]System.Object
    IL_0026:  dup
    IL_0027:  ldc.i4.0
    IL_0028:  ldloc.2
    IL_0029:  box        [mscorlib]System.Int32
    IL_002e:  stelem     [mscorlib]System.Object
    IL_0033:  ldnull
    IL_0034:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`5<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::.ctor(string,
                                                                                                                                                                                                                                                                                            object[],
                                                                                                                                                                                                                                                                                            class [mscorlib]System.Type[])
    IL_0039:  stloc.3
    IL_003a:  call       class [netstandard]System.IO.TextWriter [netstandard]System.Console::get_Out()
    IL_003f:  ldloc.3
    IL_0040:  call       !!0 [FSharp.Core]Microsoft.FSharp.Core.PrintfModule::PrintFormatLineToTextWriter<class [FSharp.Core]Microsoft.FSharp.Core.Unit>(class [mscorlib]System.IO.TextWriter,
                                                                                                                                                         class [FSharp.Core]Microsoft.FSharp.Core.PrintfFormat`4<!!0,class [mscorlib]System.IO.TextWriter,class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [FSharp.Core]Microsoft.FSharp.Core.Unit>)
    IL_0045:  pop
    IL_0046:  ldloc.2
    IL_0047:  ldloc.1
    IL_0048:  add
    IL_0049:  stloc.2
    IL_004a:  ldloc.2
    IL_004b:  ldloc.0
    IL_004c:  ble.s      IL_0052

    IL_004e:  ldloc.1
    IL_004f:  ldc.i4.0
    IL_0050:  bgt.s      IL_005a

    IL_0052:  ldloc.2
    IL_0053:  ldloc.0
    IL_0054:  bge.s      IL_001b

    IL_0056:  ldloc.1
    IL_0057:  ldc.i4.0
    IL_0058:  bge.s      IL_001b

    IL_005a:  ret
  } // end of method ForLoopWithStep1::loop

} // end of class ForLoopWithStep1

.class private abstract auto ansi sealed '<StartupCode$ForLoopWithStep1>'.$ForLoopWithStep1$fsx
       extends [mscorlib]System.Object
{
  .method public static void  main@() cil managed
  {
    .entrypoint
    // Code size       1 (0x1)
    .maxstack  8
    IL_0000:  ret
  } // end of method $ForLoopWithStep1$fsx::main@

} // end of class '<StartupCode$ForLoopWithStep1>'.$ForLoopWithStep1$fsx


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file C:\Users\albert\fsharp\artifacts\bin\FSharp.Compiler.ComponentTests\Release\net472\tests\EmittedIL\ForLoop\ForLoopWithStep1_fsx\ForLoopWithStep1.res
