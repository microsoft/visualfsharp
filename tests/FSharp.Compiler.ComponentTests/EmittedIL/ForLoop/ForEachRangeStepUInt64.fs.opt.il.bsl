




.assembly extern runtime { }
.assembly extern FSharp.Core { }
.assembly assembly
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.FSharpInterfaceDataVersionAttribute::.ctor(int32,
                                                                                                      int32,
                                                                                                      int32) = ( 01 00 02 00 00 00 00 00 00 00 00 00 00 00 00 00 ) 

  
  

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.mresource public FSharpSignatureData.assembly
{
  
  
}
.mresource public FSharpOptimizationData.assembly
{
  
  
}
.module assembly.exe

.imagebase {value}
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       
.corflags 0x00000001    





.class public abstract auto ansi sealed assembly
       extends [runtime]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .method public specialname static uint64 get_c() cil managed
  {
    
    .maxstack  8
    IL_0000:  ldsfld     uint64 '<StartupCode$assembly>'.$assembly::c@1
    IL_0005:  ret
  } 

  .method public specialname static void set_c(uint64 'value') cil managed
  {
    
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     uint64 '<StartupCode$assembly>'.$assembly::c@1
    IL_0006:  ret
  } 

  .method public static void  f0() cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  conv.i8
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.s   10
    IL_0005:  conv.i8
    IL_0006:  stloc.1
    IL_0007:  br.s       IL_0019

    IL_0009:  ldloc.1
    IL_000a:  call       void assembly::set_c(uint64)
    IL_000f:  ldloc.1
    IL_0010:  ldc.i4.1
    IL_0011:  conv.i8
    IL_0012:  add
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  conv.i8
    IL_0017:  add
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.0
    IL_001b:  conv.i8
    IL_001c:  blt.un.s   IL_0009

    IL_001e:  ret
  } 

  .method public static void  f00() cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  conv.i8
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.s   10
    IL_0005:  conv.i8
    IL_0006:  stloc.1
    IL_0007:  br.s       IL_0019

    IL_0009:  ldloc.1
    IL_000a:  call       void assembly::set_c(uint64)
    IL_000f:  ldloc.1
    IL_0010:  ldc.i4.1
    IL_0011:  conv.i8
    IL_0012:  add
    IL_0013:  stloc.1
    IL_0014:  ldloc.0
    IL_0015:  ldc.i4.1
    IL_0016:  conv.i8
    IL_0017:  add
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.0
    IL_001b:  conv.i8
    IL_001c:  blt.un.s   IL_0009

    IL_001e:  ret
  } 

  .method public static void  f1() cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  conv.i8
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.1
    IL_0004:  conv.i8
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_0018

    IL_0008:  ldloc.1
    IL_0009:  call       void assembly::set_c(uint64)
    IL_000e:  ldloc.1
    IL_000f:  ldc.i4.1
    IL_0010:  conv.i8
    IL_0011:  add
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.1
    IL_0015:  conv.i8
    IL_0016:  add
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.s   10
    IL_001b:  conv.i8
    IL_001c:  blt.un.s   IL_0008

    IL_001e:  ret
  } 

  .method public static void  f2(uint64 start) cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1,
             uint64 V_2)
    IL_0000:  ldc.i4.s   10
    IL_0002:  conv.i8
    IL_0003:  ldarg.0
    IL_0004:  bge.un.s   IL_000b

    IL_0006:  ldc.i4.0
    IL_0007:  conv.i8
    IL_0008:  nop
    IL_0009:  br.s       IL_0014

    IL_000b:  ldc.i4.s   10
    IL_000d:  conv.i8
    IL_000e:  ldarg.0
    IL_000f:  sub
    IL_0010:  ldc.i4.1
    IL_0011:  conv.i8
    IL_0012:  add.ovf.un
    IL_0013:  nop
    IL_0014:  stloc.0
    IL_0015:  ldc.i4.0
    IL_0016:  conv.i8
    IL_0017:  stloc.1
    IL_0018:  ldarg.0
    IL_0019:  stloc.2
    IL_001a:  br.s       IL_002c

    IL_001c:  ldloc.2
    IL_001d:  call       void assembly::set_c(uint64)
    IL_0022:  ldloc.2
    IL_0023:  ldc.i4.1
    IL_0024:  conv.i8
    IL_0025:  add
    IL_0026:  stloc.2
    IL_0027:  ldloc.1
    IL_0028:  ldc.i4.1
    IL_0029:  conv.i8
    IL_002a:  add
    IL_002b:  stloc.1
    IL_002c:  ldloc.1
    IL_002d:  ldloc.0
    IL_002e:  blt.un.s   IL_001c

    IL_0030:  ret
  } 

  .method public static void  f3(uint64 finish) cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1,
             uint64 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  conv.i8
    IL_0003:  bge.un.s   IL_000a

    IL_0005:  ldc.i4.0
    IL_0006:  conv.i8
    IL_0007:  nop
    IL_0008:  br.s       IL_0012

    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.1
    IL_000c:  conv.i8
    IL_000d:  sub
    IL_000e:  ldc.i4.1
    IL_000f:  conv.i8
    IL_0010:  add.ovf.un
    IL_0011:  nop
    IL_0012:  stloc.0
    IL_0013:  ldc.i4.0
    IL_0014:  conv.i8
    IL_0015:  stloc.1
    IL_0016:  ldc.i4.1
    IL_0017:  conv.i8
    IL_0018:  stloc.2
    IL_0019:  br.s       IL_002b

    IL_001b:  ldloc.2
    IL_001c:  call       void assembly::set_c(uint64)
    IL_0021:  ldloc.2
    IL_0022:  ldc.i4.1
    IL_0023:  conv.i8
    IL_0024:  add
    IL_0025:  stloc.2
    IL_0026:  ldloc.1
    IL_0027:  ldc.i4.1
    IL_0028:  conv.i8
    IL_0029:  add
    IL_002a:  stloc.1
    IL_002b:  ldloc.1
    IL_002c:  ldloc.0
    IL_002d:  blt.un.s   IL_001b

    IL_002f:  ret
  } 

  .method public static void  f4(uint64 start,
                                 uint64 finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1,
             uint64 V_2,
             uint64 V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  bge.un.s   IL_0009

    IL_0004:  ldc.i4.0
    IL_0005:  conv.i8
    IL_0006:  nop
    IL_0007:  br.s       IL_000d

    IL_0009:  ldarg.1
    IL_000a:  ldarg.0
    IL_000b:  sub
    IL_000c:  nop
    IL_000d:  stloc.0
    IL_000e:  ldloc.0
    IL_000f:  ldc.i4.m1
    IL_0010:  conv.i8
    IL_0011:  bne.un.s   IL_0040

    IL_0013:  ldc.i4.0
    IL_0014:  conv.i8
    IL_0015:  stloc.1
    IL_0016:  ldarg.0
    IL_0017:  stloc.2
    IL_0018:  ldloc.2
    IL_0019:  call       void assembly::set_c(uint64)
    IL_001e:  ldloc.2
    IL_001f:  ldc.i4.1
    IL_0020:  conv.i8
    IL_0021:  add
    IL_0022:  stloc.2
    IL_0023:  ldloc.1
    IL_0024:  ldc.i4.1
    IL_0025:  conv.i8
    IL_0026:  add
    IL_0027:  stloc.1
    IL_0028:  br.s       IL_003a

    IL_002a:  ldloc.2
    IL_002b:  call       void assembly::set_c(uint64)
    IL_0030:  ldloc.2
    IL_0031:  ldc.i4.1
    IL_0032:  conv.i8
    IL_0033:  add
    IL_0034:  stloc.2
    IL_0035:  ldloc.1
    IL_0036:  ldc.i4.1
    IL_0037:  conv.i8
    IL_0038:  add
    IL_0039:  stloc.1
    IL_003a:  ldloc.1
    IL_003b:  ldc.i4.0
    IL_003c:  conv.i8
    IL_003d:  bgt.un.s   IL_002a

    IL_003f:  ret

    IL_0040:  ldarg.1
    IL_0041:  ldarg.0
    IL_0042:  bge.un.s   IL_0049

    IL_0044:  ldc.i4.0
    IL_0045:  conv.i8
    IL_0046:  nop
    IL_0047:  br.s       IL_0050

    IL_0049:  ldarg.1
    IL_004a:  ldarg.0
    IL_004b:  sub
    IL_004c:  ldc.i4.1
    IL_004d:  conv.i8
    IL_004e:  add.ovf.un
    IL_004f:  nop
    IL_0050:  stloc.1
    IL_0051:  ldc.i4.0
    IL_0052:  conv.i8
    IL_0053:  stloc.2
    IL_0054:  ldarg.0
    IL_0055:  stloc.3
    IL_0056:  br.s       IL_0068

    IL_0058:  ldloc.3
    IL_0059:  call       void assembly::set_c(uint64)
    IL_005e:  ldloc.3
    IL_005f:  ldc.i4.1
    IL_0060:  conv.i8
    IL_0061:  add
    IL_0062:  stloc.3
    IL_0063:  ldloc.2
    IL_0064:  ldc.i4.1
    IL_0065:  conv.i8
    IL_0066:  add
    IL_0067:  stloc.2
    IL_0068:  ldloc.2
    IL_0069:  ldloc.1
    IL_006a:  blt.un.s   IL_0058

    IL_006c:  ret
  } 

  .method public static void  f5() cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  conv.i8
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.1
    IL_0004:  conv.i8
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_0018

    IL_0008:  ldloc.1
    IL_0009:  call       void assembly::set_c(uint64)
    IL_000e:  ldloc.1
    IL_000f:  ldc.i4.1
    IL_0010:  conv.i8
    IL_0011:  add
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.1
    IL_0015:  conv.i8
    IL_0016:  add
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.s   10
    IL_001b:  conv.i8
    IL_001c:  blt.un.s   IL_0008

    IL_001e:  ret
  } 

  .method public static void  f6() cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  conv.i8
    IL_0002:  stloc.0
    IL_0003:  ldc.i4.1
    IL_0004:  conv.i8
    IL_0005:  stloc.1
    IL_0006:  br.s       IL_0018

    IL_0008:  ldloc.1
    IL_0009:  call       void assembly::set_c(uint64)
    IL_000e:  ldloc.1
    IL_000f:  ldc.i4.2
    IL_0010:  conv.i8
    IL_0011:  add
    IL_0012:  stloc.1
    IL_0013:  ldloc.0
    IL_0014:  ldc.i4.1
    IL_0015:  conv.i8
    IL_0016:  add
    IL_0017:  stloc.0
    IL_0018:  ldloc.0
    IL_0019:  ldc.i4.5
    IL_001a:  conv.i8
    IL_001b:  blt.un.s   IL_0008

    IL_001d:  ret
  } 

  .method public static void  f7(uint64 start) cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1,
             uint64 V_2)
    IL_0000:  ldc.i4.s   10
    IL_0002:  conv.i8
    IL_0003:  ldarg.0
    IL_0004:  bge.un.s   IL_000b

    IL_0006:  ldc.i4.0
    IL_0007:  conv.i8
    IL_0008:  nop
    IL_0009:  br.s       IL_0018

    IL_000b:  ldc.i4.s   10
    IL_000d:  conv.i8
    IL_000e:  ldarg.0
    IL_000f:  sub
    IL_0010:  ldc.i4.2
    IL_0011:  conv.i8
    IL_0012:  conv.i8
    IL_0013:  div.un
    IL_0014:  ldc.i4.1
    IL_0015:  conv.i8
    IL_0016:  add.ovf.un
    IL_0017:  nop
    IL_0018:  stloc.0
    IL_0019:  ldc.i4.0
    IL_001a:  conv.i8
    IL_001b:  stloc.1
    IL_001c:  ldarg.0
    IL_001d:  stloc.2
    IL_001e:  br.s       IL_0030

    IL_0020:  ldloc.2
    IL_0021:  call       void assembly::set_c(uint64)
    IL_0026:  ldloc.2
    IL_0027:  ldc.i4.2
    IL_0028:  conv.i8
    IL_0029:  add
    IL_002a:  stloc.2
    IL_002b:  ldloc.1
    IL_002c:  ldc.i4.1
    IL_002d:  conv.i8
    IL_002e:  add
    IL_002f:  stloc.1
    IL_0030:  ldloc.1
    IL_0031:  ldloc.0
    IL_0032:  blt.un.s   IL_0020

    IL_0034:  ret
  } 

  .method public static void  f8(uint64 step) cil managed
  {
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             uint64 V_2)
    IL_0000:  ldarg.0
    IL_0001:  brtrue.s   IL_0012

    IL_0003:  ldc.i4.1
    IL_0004:  conv.i8
    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.s   10
    IL_0008:  conv.i8
    IL_0009:  call       class [runtime]System.Collections.Generic.IEnumerable`1<uint64> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUInt64(uint64,
                                                                                                                                                                             uint64,
                                                                                                                                                                             uint64)
    IL_000e:  pop
    IL_000f:  nop
    IL_0010:  br.s       IL_0013

    IL_0012:  nop
    IL_0013:  ldc.i4.s   9
    IL_0015:  conv.i8
    IL_0016:  ldarg.0
    IL_0017:  conv.i8
    IL_0018:  div.un
    IL_0019:  ldc.i4.1
    IL_001a:  conv.i8
    IL_001b:  add.ovf.un
    IL_001c:  stloc.0
    IL_001d:  ldc.i4.0
    IL_001e:  conv.i8
    IL_001f:  stloc.1
    IL_0020:  ldc.i4.1
    IL_0021:  conv.i8
    IL_0022:  stloc.2
    IL_0023:  br.s       IL_0034

    IL_0025:  ldloc.2
    IL_0026:  call       void assembly::set_c(uint64)
    IL_002b:  ldloc.2
    IL_002c:  ldarg.0
    IL_002d:  add
    IL_002e:  stloc.2
    IL_002f:  ldloc.1
    IL_0030:  ldc.i4.1
    IL_0031:  conv.i8
    IL_0032:  add
    IL_0033:  stloc.1
    IL_0034:  ldloc.1
    IL_0035:  ldloc.0
    IL_0036:  blt.un.s   IL_0025

    IL_0038:  ret
  } 

  .method public static void  f9(uint64 finish) cil managed
  {
    
    .maxstack  4
    .locals init (uint64 V_0,
             uint64 V_1,
             uint64 V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i4.1
    IL_0002:  conv.i8
    IL_0003:  bge.un.s   IL_000a

    IL_0005:  ldc.i4.0
    IL_0006:  conv.i8
    IL_0007:  nop
    IL_0008:  br.s       IL_0016

    IL_000a:  ldarg.0
    IL_000b:  ldc.i4.1
    IL_000c:  conv.i8
    IL_000d:  sub
    IL_000e:  ldc.i4.2
    IL_000f:  conv.i8
    IL_0010:  conv.i8
    IL_0011:  div.un
    IL_0012:  ldc.i4.1
    IL_0013:  conv.i8
    IL_0014:  add.ovf.un
    IL_0015:  nop
    IL_0016:  stloc.0
    IL_0017:  ldc.i4.0
    IL_0018:  conv.i8
    IL_0019:  stloc.1
    IL_001a:  ldc.i4.1
    IL_001b:  conv.i8
    IL_001c:  stloc.2
    IL_001d:  br.s       IL_002f

    IL_001f:  ldloc.2
    IL_0020:  call       void assembly::set_c(uint64)
    IL_0025:  ldloc.2
    IL_0026:  ldc.i4.2
    IL_0027:  conv.i8
    IL_0028:  add
    IL_0029:  stloc.2
    IL_002a:  ldloc.1
    IL_002b:  ldc.i4.1
    IL_002c:  conv.i8
    IL_002d:  add
    IL_002e:  stloc.1
    IL_002f:  ldloc.1
    IL_0030:  ldloc.0
    IL_0031:  blt.un.s   IL_001f

    IL_0033:  ret
  } 

  .method public static void  f10(uint64 start,
                                  uint64 step,
                                  uint64 finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 03 00 00 00 01 00 00 00 01 00 00 00 01 00 
                                                                                                                    00 00 00 00 ) 
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             uint64 V_2,
             uint64 V_3)
    IL_0000:  ldarg.1
    IL_0001:  brtrue.s   IL_000f

    IL_0003:  ldarg.2
    IL_0004:  ldarg.1
    IL_0005:  ldarg.2
    IL_0006:  call       class [runtime]System.Collections.Generic.IEnumerable`1<uint64> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUInt64(uint64,
                                                                                                                                                                             uint64,
                                                                                                                                                                             uint64)
    IL_000b:  pop
    IL_000c:  nop
    IL_000d:  br.s       IL_0010

    IL_000f:  nop
    IL_0010:  ldarg.2
    IL_0011:  ldarg.2
    IL_0012:  bge.un.s   IL_0019

    IL_0014:  ldc.i4.0
    IL_0015:  conv.i8
    IL_0016:  nop
    IL_0017:  br.s       IL_0020

    IL_0019:  ldarg.2
    IL_001a:  ldarg.2
    IL_001b:  sub
    IL_001c:  ldarg.1
    IL_001d:  conv.i8
    IL_001e:  div.un
    IL_001f:  nop
    IL_0020:  stloc.0
    IL_0021:  ldloc.0
    IL_0022:  ldc.i4.m1
    IL_0023:  conv.i8
    IL_0024:  bne.un.s   IL_0051

    IL_0026:  ldc.i4.0
    IL_0027:  conv.i8
    IL_0028:  stloc.1
    IL_0029:  ldarg.2
    IL_002a:  stloc.2
    IL_002b:  ldloc.2
    IL_002c:  call       void assembly::set_c(uint64)
    IL_0031:  ldloc.2
    IL_0032:  ldarg.1
    IL_0033:  add
    IL_0034:  stloc.2
    IL_0035:  ldloc.1
    IL_0036:  ldc.i4.1
    IL_0037:  conv.i8
    IL_0038:  add
    IL_0039:  stloc.1
    IL_003a:  br.s       IL_004b

    IL_003c:  ldloc.2
    IL_003d:  call       void assembly::set_c(uint64)
    IL_0042:  ldloc.2
    IL_0043:  ldarg.1
    IL_0044:  add
    IL_0045:  stloc.2
    IL_0046:  ldloc.1
    IL_0047:  ldc.i4.1
    IL_0048:  conv.i8
    IL_0049:  add
    IL_004a:  stloc.1
    IL_004b:  ldloc.1
    IL_004c:  ldc.i4.0
    IL_004d:  conv.i8
    IL_004e:  bgt.un.s   IL_003c

    IL_0050:  ret

    IL_0051:  ldarg.1
    IL_0052:  brtrue.s   IL_0060

    IL_0054:  ldarg.2
    IL_0055:  ldarg.1
    IL_0056:  ldarg.2
    IL_0057:  call       class [runtime]System.Collections.Generic.IEnumerable`1<uint64> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUInt64(uint64,
                                                                                                                                                                             uint64,
                                                                                                                                                                             uint64)
    IL_005c:  pop
    IL_005d:  nop
    IL_005e:  br.s       IL_0061

    IL_0060:  nop
    IL_0061:  ldarg.2
    IL_0062:  ldarg.2
    IL_0063:  bge.un.s   IL_006a

    IL_0065:  ldc.i4.0
    IL_0066:  conv.i8
    IL_0067:  nop
    IL_0068:  br.s       IL_0074

    IL_006a:  ldarg.2
    IL_006b:  ldarg.2
    IL_006c:  sub
    IL_006d:  ldarg.1
    IL_006e:  conv.i8
    IL_006f:  div.un
    IL_0070:  ldc.i4.1
    IL_0071:  conv.i8
    IL_0072:  add.ovf.un
    IL_0073:  nop
    IL_0074:  stloc.1
    IL_0075:  ldc.i4.0
    IL_0076:  conv.i8
    IL_0077:  stloc.2
    IL_0078:  ldarg.2
    IL_0079:  stloc.3
    IL_007a:  br.s       IL_008b

    IL_007c:  ldloc.3
    IL_007d:  call       void assembly::set_c(uint64)
    IL_0082:  ldloc.3
    IL_0083:  ldarg.1
    IL_0084:  add
    IL_0085:  stloc.3
    IL_0086:  ldloc.2
    IL_0087:  ldc.i4.1
    IL_0088:  conv.i8
    IL_0089:  add
    IL_008a:  stloc.2
    IL_008b:  ldloc.2
    IL_008c:  ldloc.1
    IL_008d:  blt.un.s   IL_007c

    IL_008f:  ret
  } 

  .method public static void  f11(uint64 start,
                                  uint64 finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  6
    .locals init (int32 V_0,
             uint64 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_0015

    IL_0006:  ldloc.1
    IL_0007:  call       void assembly::set_c(uint64)
    IL_000c:  ldloc.1
    IL_000d:  ldc.i4.0
    IL_000e:  conv.i8
    IL_000f:  add
    IL_0010:  stloc.1
    IL_0011:  ldloc.0
    IL_0012:  ldc.i4.1
    IL_0013:  add
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldarg.0
    IL_0017:  ldc.i4.0
    IL_0018:  conv.i8
    IL_0019:  ldarg.1
    IL_001a:  call       class [runtime]System.Collections.Generic.IEnumerable`1<uint64> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUInt64(uint64,
                                                                                                                                                                             uint64,
                                                                                                                                                                             uint64)
    IL_001f:  pop
    IL_0020:  ldc.i4.m1
    IL_0021:  blt.un.s   IL_0006

    IL_0023:  ret
  } 

  .method public static void  f12() cil managed
  {
    
    .maxstack  6
    .locals init (int32 V_0,
             uint64 V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i4.1
    IL_0003:  conv.i8
    IL_0004:  stloc.1
    IL_0005:  br.s       IL_0016

    IL_0007:  ldloc.1
    IL_0008:  call       void assembly::set_c(uint64)
    IL_000d:  ldloc.1
    IL_000e:  ldc.i4.0
    IL_000f:  conv.i8
    IL_0010:  add
    IL_0011:  stloc.1
    IL_0012:  ldloc.0
    IL_0013:  ldc.i4.1
    IL_0014:  add
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  ldc.i4.1
    IL_0018:  conv.i8
    IL_0019:  ldc.i4.0
    IL_001a:  conv.i8
    IL_001b:  ldc.i4.s   10
    IL_001d:  conv.i8
    IL_001e:  call       class [runtime]System.Collections.Generic.IEnumerable`1<uint64> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUInt64(uint64,
                                                                                                                                                                             uint64,
                                                                                                                                                                             uint64)
    IL_0023:  pop
    IL_0024:  ldc.i4.m1
    IL_0025:  blt.un.s   IL_0007

    IL_0027:  ret
  } 

  .property uint64 c()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .set void assembly::set_c(uint64)
    .get uint64 assembly::get_c()
  } 
} 

.class private abstract auto ansi sealed '<StartupCode$assembly>'.$assembly
       extends [runtime]System.Object
{
  .field static assembly uint64 c@1
  .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly int32 init@
  .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public static void  main@() cil managed
  {
    .entrypoint
    
    .maxstack  8
    IL_0000:  ldc.i4.0
    IL_0001:  conv.i8
    IL_0002:  stsfld     uint64 '<StartupCode$assembly>'.$assembly::c@1
    IL_0007:  ret
  } 

} 






