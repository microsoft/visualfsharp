




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
  .method public static int32[]  f1() cil managed
  {
    
    .maxstack  5
    .locals init (int32[] V_0,
             uint64 V_1,
             int32 V_2)
    IL_0000:  ldc.i4.s   10
    IL_0002:  conv.i8
    IL_0003:  conv.ovf.i.un
    IL_0004:  newarr     [runtime]System.Int32
    IL_0009:  stloc.0
    IL_000a:  ldc.i4.0
    IL_000b:  conv.i8
    IL_000c:  stloc.1
    IL_000d:  ldc.i4.1
    IL_000e:  stloc.2
    IL_000f:  br.s       IL_001f

    IL_0011:  ldloc.0
    IL_0012:  ldloc.1
    IL_0013:  conv.i
    IL_0014:  ldloc.2
    IL_0015:  stelem.i4
    IL_0016:  ldloc.2
    IL_0017:  ldc.i4.1
    IL_0018:  add
    IL_0019:  stloc.2
    IL_001a:  ldloc.1
    IL_001b:  ldc.i4.1
    IL_001c:  conv.i8
    IL_001d:  add
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  ldc.i4.s   10
    IL_0022:  conv.i8
    IL_0023:  blt.un.s   IL_0011

    IL_0025:  ldloc.0
    IL_0026:  ret
  } 

  .method public static int32[]  f2() cil managed
  {
    
    .maxstack  8
    IL_0000:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0005:  ret
  } 

  .method public static int32[]  f3() cil managed
  {
    
    .maxstack  5
    .locals init (int32[] V_0,
             uint64 V_1,
             int32 V_2)
    IL_0000:  ldc.i4.s   10
    IL_0002:  conv.i8
    IL_0003:  conv.ovf.i.un
    IL_0004:  newarr     [runtime]System.Int32
    IL_0009:  stloc.0
    IL_000a:  ldc.i4.0
    IL_000b:  conv.i8
    IL_000c:  stloc.1
    IL_000d:  ldc.i4.1
    IL_000e:  stloc.2
    IL_000f:  br.s       IL_001f

    IL_0011:  ldloc.0
    IL_0012:  ldloc.1
    IL_0013:  conv.i
    IL_0014:  ldloc.2
    IL_0015:  stelem.i4
    IL_0016:  ldloc.2
    IL_0017:  ldc.i4.1
    IL_0018:  add
    IL_0019:  stloc.2
    IL_001a:  ldloc.1
    IL_001b:  ldc.i4.1
    IL_001c:  conv.i8
    IL_001d:  add
    IL_001e:  stloc.1
    IL_001f:  ldloc.1
    IL_0020:  ldc.i4.s   10
    IL_0022:  conv.i8
    IL_0023:  blt.un.s   IL_0011

    IL_0025:  ldloc.0
    IL_0026:  ret
  } 

  .method public static int32[]  f4() cil managed
  {
    
    .maxstack  5
    .locals init (int32[] V_0,
             uint64 V_1,
             int32 V_2)
    IL_0000:  ldc.i4.5
    IL_0001:  conv.i8
    IL_0002:  conv.ovf.i.un
    IL_0003:  newarr     [runtime]System.Int32
    IL_0008:  stloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  conv.i8
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.1
    IL_000d:  stloc.2
    IL_000e:  br.s       IL_001e

    IL_0010:  ldloc.0
    IL_0011:  ldloc.1
    IL_0012:  conv.i
    IL_0013:  ldloc.2
    IL_0014:  stelem.i4
    IL_0015:  ldloc.2
    IL_0016:  ldc.i4.2
    IL_0017:  add
    IL_0018:  stloc.2
    IL_0019:  ldloc.1
    IL_001a:  ldc.i4.1
    IL_001b:  conv.i8
    IL_001c:  add
    IL_001d:  stloc.1
    IL_001e:  ldloc.1
    IL_001f:  ldc.i4.5
    IL_0020:  conv.i8
    IL_0021:  blt.un.s   IL_0010

    IL_0023:  ldloc.0
    IL_0024:  ret
  } 

  .method public static int32[]  f5() cil managed
  {
    
    .maxstack  8
    IL_0000:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0005:  ret
  } 

  .method public static int32[]  f6() cil managed
  {
    
    .maxstack  8
    IL_0000:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0005:  ret
  } 

  .method public static int32[]  f7() cil managed
  {
    
    .maxstack  5
    .locals init (int32[] V_0,
             uint64 V_1,
             int32 V_2)
    IL_0000:  ldc.i4.s   10
    IL_0002:  conv.i8
    IL_0003:  conv.ovf.i.un
    IL_0004:  newarr     [runtime]System.Int32
    IL_0009:  stloc.0
    IL_000a:  ldc.i4.0
    IL_000b:  conv.i8
    IL_000c:  stloc.1
    IL_000d:  ldc.i4.s   10
    IL_000f:  stloc.2
    IL_0010:  br.s       IL_0020

    IL_0012:  ldloc.0
    IL_0013:  ldloc.1
    IL_0014:  conv.i
    IL_0015:  ldloc.2
    IL_0016:  stelem.i4
    IL_0017:  ldloc.2
    IL_0018:  ldc.i4.m1
    IL_0019:  add
    IL_001a:  stloc.2
    IL_001b:  ldloc.1
    IL_001c:  ldc.i4.1
    IL_001d:  conv.i8
    IL_001e:  add
    IL_001f:  stloc.1
    IL_0020:  ldloc.1
    IL_0021:  ldc.i4.s   10
    IL_0023:  conv.i8
    IL_0024:  blt.un.s   IL_0012

    IL_0026:  ldloc.0
    IL_0027:  ret
  } 

  .method public static int32[]  f8() cil managed
  {
    
    .maxstack  5
    .locals init (int32[] V_0,
             uint64 V_1,
             int32 V_2)
    IL_0000:  ldc.i4.5
    IL_0001:  conv.i8
    IL_0002:  conv.ovf.i.un
    IL_0003:  newarr     [runtime]System.Int32
    IL_0008:  stloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  conv.i8
    IL_000b:  stloc.1
    IL_000c:  ldc.i4.s   10
    IL_000e:  stloc.2
    IL_000f:  br.s       IL_0020

    IL_0011:  ldloc.0
    IL_0012:  ldloc.1
    IL_0013:  conv.i
    IL_0014:  ldloc.2
    IL_0015:  stelem.i4
    IL_0016:  ldloc.2
    IL_0017:  ldc.i4.s   -2
    IL_0019:  add
    IL_001a:  stloc.2
    IL_001b:  ldloc.1
    IL_001c:  ldc.i4.1
    IL_001d:  conv.i8
    IL_001e:  add
    IL_001f:  stloc.1
    IL_0020:  ldloc.1
    IL_0021:  ldc.i4.5
    IL_0022:  conv.i8
    IL_0023:  blt.un.s   IL_0011

    IL_0025:  ldloc.0
    IL_0026:  ret
  } 

  .method public static int32[]  f9(int32 start) cil managed
  {
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldc.i4.s   10
    IL_0003:  ldarg.0
    IL_0004:  bge.s      IL_000b

    IL_0006:  ldc.i4.0
    IL_0007:  conv.i8
    IL_0008:  nop
    IL_0009:  br.s       IL_0015

    IL_000b:  ldc.i4.s   10
    IL_000d:  conv.i8
    IL_000e:  ldarg.0
    IL_000f:  conv.i8
    IL_0010:  sub
    IL_0011:  ldc.i4.1
    IL_0012:  conv.i8
    IL_0013:  add.ovf.un
    IL_0014:  nop
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  stloc.1
    IL_0018:  ldloc.1
    IL_0019:  ldc.i4.1
    IL_001a:  conv.i8
    IL_001b:  bge.un.s   IL_0023

    IL_001d:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0022:  ret

    IL_0023:  ldloc.1
    IL_0024:  conv.ovf.i.un
    IL_0025:  newarr     [runtime]System.Int32
    IL_002a:  stloc.2
    IL_002b:  ldc.i4.0
    IL_002c:  conv.i8
    IL_002d:  stloc.3
    IL_002e:  ldarg.0
    IL_002f:  stloc.s    V_4
    IL_0031:  br.s       IL_0044

    IL_0033:  ldloc.2
    IL_0034:  ldloc.3
    IL_0035:  conv.i
    IL_0036:  ldloc.s    V_4
    IL_0038:  stelem.i4
    IL_0039:  ldloc.s    V_4
    IL_003b:  ldc.i4.1
    IL_003c:  add
    IL_003d:  stloc.s    V_4
    IL_003f:  ldloc.3
    IL_0040:  ldc.i4.1
    IL_0041:  conv.i8
    IL_0042:  add
    IL_0043:  stloc.3
    IL_0044:  ldloc.3
    IL_0045:  ldloc.0
    IL_0046:  blt.un.s   IL_0033

    IL_0048:  ldloc.2
    IL_0049:  ret
  } 

  .method public static int32[]  f10(int32 finish) cil managed
  {
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.1
    IL_0003:  bge.s      IL_000a

    IL_0005:  ldc.i4.0
    IL_0006:  conv.i8
    IL_0007:  nop
    IL_0008:  br.s       IL_0013

    IL_000a:  ldarg.0
    IL_000b:  conv.i8
    IL_000c:  ldc.i4.1
    IL_000d:  conv.i8
    IL_000e:  sub
    IL_000f:  ldc.i4.1
    IL_0010:  conv.i8
    IL_0011:  add.ovf.un
    IL_0012:  nop
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  ldc.i4.1
    IL_0018:  conv.i8
    IL_0019:  bge.un.s   IL_0021

    IL_001b:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0020:  ret

    IL_0021:  ldloc.1
    IL_0022:  conv.ovf.i.un
    IL_0023:  newarr     [runtime]System.Int32
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  conv.i8
    IL_002b:  stloc.3
    IL_002c:  ldc.i4.1
    IL_002d:  stloc.s    V_4
    IL_002f:  br.s       IL_0042

    IL_0031:  ldloc.2
    IL_0032:  ldloc.3
    IL_0033:  conv.i
    IL_0034:  ldloc.s    V_4
    IL_0036:  stelem.i4
    IL_0037:  ldloc.s    V_4
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stloc.s    V_4
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.1
    IL_003f:  conv.i8
    IL_0040:  add
    IL_0041:  stloc.3
    IL_0042:  ldloc.3
    IL_0043:  ldloc.0
    IL_0044:  blt.un.s   IL_0031

    IL_0046:  ldloc.2
    IL_0047:  ret
  } 

  .method public static int32[]  f11(int32 start,
                                     int32 finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  bge.s      IL_000a

    IL_0005:  ldc.i4.0
    IL_0006:  conv.i8
    IL_0007:  nop
    IL_0008:  br.s       IL_0013

    IL_000a:  ldarg.1
    IL_000b:  conv.i8
    IL_000c:  ldarg.0
    IL_000d:  conv.i8
    IL_000e:  sub
    IL_000f:  ldc.i4.1
    IL_0010:  conv.i8
    IL_0011:  add.ovf.un
    IL_0012:  nop
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  ldc.i4.1
    IL_0018:  conv.i8
    IL_0019:  bge.un.s   IL_0021

    IL_001b:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0020:  ret

    IL_0021:  ldloc.1
    IL_0022:  conv.ovf.i.un
    IL_0023:  newarr     [runtime]System.Int32
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  conv.i8
    IL_002b:  stloc.3
    IL_002c:  ldarg.0
    IL_002d:  stloc.s    V_4
    IL_002f:  br.s       IL_0042

    IL_0031:  ldloc.2
    IL_0032:  ldloc.3
    IL_0033:  conv.i
    IL_0034:  ldloc.s    V_4
    IL_0036:  stelem.i4
    IL_0037:  ldloc.s    V_4
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stloc.s    V_4
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.1
    IL_003f:  conv.i8
    IL_0040:  add
    IL_0041:  stloc.3
    IL_0042:  ldloc.3
    IL_0043:  ldloc.0
    IL_0044:  blt.un.s   IL_0031

    IL_0046:  ldloc.2
    IL_0047:  ret
  } 

  .method public static int32[]  f12(int32 start) cil managed
  {
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldc.i4.s   10
    IL_0003:  ldarg.0
    IL_0004:  bge.s      IL_000b

    IL_0006:  ldc.i4.0
    IL_0007:  conv.i8
    IL_0008:  nop
    IL_0009:  br.s       IL_0015

    IL_000b:  ldc.i4.s   10
    IL_000d:  conv.i8
    IL_000e:  ldarg.0
    IL_000f:  conv.i8
    IL_0010:  sub
    IL_0011:  ldc.i4.1
    IL_0012:  conv.i8
    IL_0013:  add.ovf.un
    IL_0014:  nop
    IL_0015:  stloc.0
    IL_0016:  ldloc.0
    IL_0017:  stloc.1
    IL_0018:  ldloc.1
    IL_0019:  ldc.i4.1
    IL_001a:  conv.i8
    IL_001b:  bge.un.s   IL_0023

    IL_001d:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0022:  ret

    IL_0023:  ldloc.1
    IL_0024:  conv.ovf.i.un
    IL_0025:  newarr     [runtime]System.Int32
    IL_002a:  stloc.2
    IL_002b:  ldc.i4.0
    IL_002c:  conv.i8
    IL_002d:  stloc.3
    IL_002e:  ldarg.0
    IL_002f:  stloc.s    V_4
    IL_0031:  br.s       IL_0044

    IL_0033:  ldloc.2
    IL_0034:  ldloc.3
    IL_0035:  conv.i
    IL_0036:  ldloc.s    V_4
    IL_0038:  stelem.i4
    IL_0039:  ldloc.s    V_4
    IL_003b:  ldc.i4.1
    IL_003c:  add
    IL_003d:  stloc.s    V_4
    IL_003f:  ldloc.3
    IL_0040:  ldc.i4.1
    IL_0041:  conv.i8
    IL_0042:  add
    IL_0043:  stloc.3
    IL_0044:  ldloc.3
    IL_0045:  ldloc.0
    IL_0046:  blt.un.s   IL_0033

    IL_0048:  ldloc.2
    IL_0049:  ret
  } 

  .method public static int32[]  f13(int32 step) cil managed
  {
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  brtrue.s   IL_0011

    IL_0004:  ldc.i4.1
    IL_0005:  ldarg.0
    IL_0006:  ldc.i4.s   10
    IL_0008:  call       class [runtime]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32)
    IL_000d:  pop
    IL_000e:  nop
    IL_000f:  br.s       IL_0012

    IL_0011:  nop
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.0
    IL_0014:  bge.s      IL_002f

    IL_0016:  ldc.i4.s   10
    IL_0018:  ldc.i4.1
    IL_0019:  bge.s      IL_0020

    IL_001b:  ldc.i4.0
    IL_001c:  conv.i8
    IL_001d:  nop
    IL_001e:  br.s       IL_004b

    IL_0020:  ldc.i4.s   10
    IL_0022:  conv.i8
    IL_0023:  ldc.i4.1
    IL_0024:  conv.i8
    IL_0025:  sub
    IL_0026:  ldarg.0
    IL_0027:  conv.i8
    IL_0028:  div.un
    IL_0029:  ldc.i4.1
    IL_002a:  conv.i8
    IL_002b:  add.ovf.un
    IL_002c:  nop
    IL_002d:  br.s       IL_004b

    IL_002f:  ldc.i4.1
    IL_0030:  ldc.i4.s   10
    IL_0032:  bge.s      IL_0039

    IL_0034:  ldc.i4.0
    IL_0035:  conv.i8
    IL_0036:  nop
    IL_0037:  br.s       IL_004b

    IL_0039:  ldc.i4.1
    IL_003a:  conv.i8
    IL_003b:  ldc.i4.s   10
    IL_003d:  conv.i8
    IL_003e:  sub
    IL_003f:  ldarg.0
    IL_0040:  not
    IL_0041:  conv.i8
    IL_0042:  ldc.i4.1
    IL_0043:  conv.i8
    IL_0044:  add
    IL_0045:  conv.i8
    IL_0046:  div.un
    IL_0047:  ldc.i4.1
    IL_0048:  conv.i8
    IL_0049:  add.ovf.un
    IL_004a:  nop
    IL_004b:  stloc.0
    IL_004c:  ldloc.0
    IL_004d:  stloc.1
    IL_004e:  ldloc.1
    IL_004f:  ldc.i4.1
    IL_0050:  conv.i8
    IL_0051:  bge.un.s   IL_0059

    IL_0053:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0058:  ret

    IL_0059:  ldloc.1
    IL_005a:  conv.ovf.i.un
    IL_005b:  newarr     [runtime]System.Int32
    IL_0060:  stloc.2
    IL_0061:  ldc.i4.0
    IL_0062:  conv.i8
    IL_0063:  stloc.3
    IL_0064:  ldc.i4.1
    IL_0065:  stloc.s    V_4
    IL_0067:  br.s       IL_007a

    IL_0069:  ldloc.2
    IL_006a:  ldloc.3
    IL_006b:  conv.i
    IL_006c:  ldloc.s    V_4
    IL_006e:  stelem.i4
    IL_006f:  ldloc.s    V_4
    IL_0071:  ldarg.0
    IL_0072:  add
    IL_0073:  stloc.s    V_4
    IL_0075:  ldloc.3
    IL_0076:  ldc.i4.1
    IL_0077:  conv.i8
    IL_0078:  add
    IL_0079:  stloc.3
    IL_007a:  ldloc.3
    IL_007b:  ldloc.0
    IL_007c:  blt.un.s   IL_0069

    IL_007e:  ldloc.2
    IL_007f:  ret
  } 

  .method public static int32[]  f14(int32 finish) cil managed
  {
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldc.i4.1
    IL_0003:  bge.s      IL_000a

    IL_0005:  ldc.i4.0
    IL_0006:  conv.i8
    IL_0007:  nop
    IL_0008:  br.s       IL_0013

    IL_000a:  ldarg.0
    IL_000b:  conv.i8
    IL_000c:  ldc.i4.1
    IL_000d:  conv.i8
    IL_000e:  sub
    IL_000f:  ldc.i4.1
    IL_0010:  conv.i8
    IL_0011:  add.ovf.un
    IL_0012:  nop
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  ldc.i4.1
    IL_0018:  conv.i8
    IL_0019:  bge.un.s   IL_0021

    IL_001b:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0020:  ret

    IL_0021:  ldloc.1
    IL_0022:  conv.ovf.i.un
    IL_0023:  newarr     [runtime]System.Int32
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  conv.i8
    IL_002b:  stloc.3
    IL_002c:  ldc.i4.1
    IL_002d:  stloc.s    V_4
    IL_002f:  br.s       IL_0042

    IL_0031:  ldloc.2
    IL_0032:  ldloc.3
    IL_0033:  conv.i
    IL_0034:  ldloc.s    V_4
    IL_0036:  stelem.i4
    IL_0037:  ldloc.s    V_4
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stloc.s    V_4
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.1
    IL_003f:  conv.i8
    IL_0040:  add
    IL_0041:  stloc.3
    IL_0042:  ldloc.3
    IL_0043:  ldloc.0
    IL_0044:  blt.un.s   IL_0031

    IL_0046:  ldloc.2
    IL_0047:  ret
  } 

  .method public static int32[]  f15(int32 start,
                                     int32 step) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  brtrue.s   IL_0011

    IL_0004:  ldarg.0
    IL_0005:  ldarg.1
    IL_0006:  ldc.i4.s   10
    IL_0008:  call       class [runtime]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32)
    IL_000d:  pop
    IL_000e:  nop
    IL_000f:  br.s       IL_0012

    IL_0011:  nop
    IL_0012:  ldc.i4.0
    IL_0013:  ldarg.1
    IL_0014:  bge.s      IL_002f

    IL_0016:  ldc.i4.s   10
    IL_0018:  ldarg.0
    IL_0019:  bge.s      IL_0020

    IL_001b:  ldc.i4.0
    IL_001c:  conv.i8
    IL_001d:  nop
    IL_001e:  br.s       IL_004b

    IL_0020:  ldc.i4.s   10
    IL_0022:  conv.i8
    IL_0023:  ldarg.0
    IL_0024:  conv.i8
    IL_0025:  sub
    IL_0026:  ldarg.1
    IL_0027:  conv.i8
    IL_0028:  div.un
    IL_0029:  ldc.i4.1
    IL_002a:  conv.i8
    IL_002b:  add.ovf.un
    IL_002c:  nop
    IL_002d:  br.s       IL_004b

    IL_002f:  ldarg.0
    IL_0030:  ldc.i4.s   10
    IL_0032:  bge.s      IL_0039

    IL_0034:  ldc.i4.0
    IL_0035:  conv.i8
    IL_0036:  nop
    IL_0037:  br.s       IL_004b

    IL_0039:  ldarg.0
    IL_003a:  conv.i8
    IL_003b:  ldc.i4.s   10
    IL_003d:  conv.i8
    IL_003e:  sub
    IL_003f:  ldarg.1
    IL_0040:  not
    IL_0041:  conv.i8
    IL_0042:  ldc.i4.1
    IL_0043:  conv.i8
    IL_0044:  add
    IL_0045:  conv.i8
    IL_0046:  div.un
    IL_0047:  ldc.i4.1
    IL_0048:  conv.i8
    IL_0049:  add.ovf.un
    IL_004a:  nop
    IL_004b:  stloc.0
    IL_004c:  ldloc.0
    IL_004d:  stloc.1
    IL_004e:  ldloc.1
    IL_004f:  ldc.i4.1
    IL_0050:  conv.i8
    IL_0051:  bge.un.s   IL_0059

    IL_0053:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0058:  ret

    IL_0059:  ldloc.1
    IL_005a:  conv.ovf.i.un
    IL_005b:  newarr     [runtime]System.Int32
    IL_0060:  stloc.2
    IL_0061:  ldc.i4.0
    IL_0062:  conv.i8
    IL_0063:  stloc.3
    IL_0064:  ldarg.0
    IL_0065:  stloc.s    V_4
    IL_0067:  br.s       IL_007a

    IL_0069:  ldloc.2
    IL_006a:  ldloc.3
    IL_006b:  conv.i
    IL_006c:  ldloc.s    V_4
    IL_006e:  stelem.i4
    IL_006f:  ldloc.s    V_4
    IL_0071:  ldarg.1
    IL_0072:  add
    IL_0073:  stloc.s    V_4
    IL_0075:  ldloc.3
    IL_0076:  ldc.i4.1
    IL_0077:  conv.i8
    IL_0078:  add
    IL_0079:  stloc.3
    IL_007a:  ldloc.3
    IL_007b:  ldloc.0
    IL_007c:  blt.un.s   IL_0069

    IL_007e:  ldloc.2
    IL_007f:  ret
  } 

  .method public static int32[]  f16(int32 start,
                                     int32 finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  ldarg.0
    IL_0003:  bge.s      IL_000a

    IL_0005:  ldc.i4.0
    IL_0006:  conv.i8
    IL_0007:  nop
    IL_0008:  br.s       IL_0013

    IL_000a:  ldarg.1
    IL_000b:  conv.i8
    IL_000c:  ldarg.0
    IL_000d:  conv.i8
    IL_000e:  sub
    IL_000f:  ldc.i4.1
    IL_0010:  conv.i8
    IL_0011:  add.ovf.un
    IL_0012:  nop
    IL_0013:  stloc.0
    IL_0014:  ldloc.0
    IL_0015:  stloc.1
    IL_0016:  ldloc.1
    IL_0017:  ldc.i4.1
    IL_0018:  conv.i8
    IL_0019:  bge.un.s   IL_0021

    IL_001b:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0020:  ret

    IL_0021:  ldloc.1
    IL_0022:  conv.ovf.i.un
    IL_0023:  newarr     [runtime]System.Int32
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  conv.i8
    IL_002b:  stloc.3
    IL_002c:  ldarg.0
    IL_002d:  stloc.s    V_4
    IL_002f:  br.s       IL_0042

    IL_0031:  ldloc.2
    IL_0032:  ldloc.3
    IL_0033:  conv.i
    IL_0034:  ldloc.s    V_4
    IL_0036:  stelem.i4
    IL_0037:  ldloc.s    V_4
    IL_0039:  ldc.i4.1
    IL_003a:  add
    IL_003b:  stloc.s    V_4
    IL_003d:  ldloc.3
    IL_003e:  ldc.i4.1
    IL_003f:  conv.i8
    IL_0040:  add
    IL_0041:  stloc.3
    IL_0042:  ldloc.3
    IL_0043:  ldloc.0
    IL_0044:  blt.un.s   IL_0031

    IL_0046:  ldloc.2
    IL_0047:  ret
  } 

  .method public static int32[]  f17(int32 step,
                                     int32 finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  brtrue.s   IL_0010

    IL_0004:  ldc.i4.1
    IL_0005:  ldarg.0
    IL_0006:  ldarg.1
    IL_0007:  call       class [runtime]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32)
    IL_000c:  pop
    IL_000d:  nop
    IL_000e:  br.s       IL_0011

    IL_0010:  nop
    IL_0011:  ldc.i4.0
    IL_0012:  ldarg.0
    IL_0013:  bge.s      IL_002c

    IL_0015:  ldarg.1
    IL_0016:  ldc.i4.1
    IL_0017:  bge.s      IL_001e

    IL_0019:  ldc.i4.0
    IL_001a:  conv.i8
    IL_001b:  nop
    IL_001c:  br.s       IL_0046

    IL_001e:  ldarg.1
    IL_001f:  conv.i8
    IL_0020:  ldc.i4.1
    IL_0021:  conv.i8
    IL_0022:  sub
    IL_0023:  ldarg.0
    IL_0024:  conv.i8
    IL_0025:  div.un
    IL_0026:  ldc.i4.1
    IL_0027:  conv.i8
    IL_0028:  add.ovf.un
    IL_0029:  nop
    IL_002a:  br.s       IL_0046

    IL_002c:  ldc.i4.1
    IL_002d:  ldarg.1
    IL_002e:  bge.s      IL_0035

    IL_0030:  ldc.i4.0
    IL_0031:  conv.i8
    IL_0032:  nop
    IL_0033:  br.s       IL_0046

    IL_0035:  ldc.i4.1
    IL_0036:  conv.i8
    IL_0037:  ldarg.1
    IL_0038:  conv.i8
    IL_0039:  sub
    IL_003a:  ldarg.0
    IL_003b:  not
    IL_003c:  conv.i8
    IL_003d:  ldc.i4.1
    IL_003e:  conv.i8
    IL_003f:  add
    IL_0040:  conv.i8
    IL_0041:  div.un
    IL_0042:  ldc.i4.1
    IL_0043:  conv.i8
    IL_0044:  add.ovf.un
    IL_0045:  nop
    IL_0046:  stloc.0
    IL_0047:  ldloc.0
    IL_0048:  stloc.1
    IL_0049:  ldloc.1
    IL_004a:  ldc.i4.1
    IL_004b:  conv.i8
    IL_004c:  bge.un.s   IL_0054

    IL_004e:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0053:  ret

    IL_0054:  ldloc.1
    IL_0055:  conv.ovf.i.un
    IL_0056:  newarr     [runtime]System.Int32
    IL_005b:  stloc.2
    IL_005c:  ldc.i4.0
    IL_005d:  conv.i8
    IL_005e:  stloc.3
    IL_005f:  ldc.i4.1
    IL_0060:  stloc.s    V_4
    IL_0062:  br.s       IL_0075

    IL_0064:  ldloc.2
    IL_0065:  ldloc.3
    IL_0066:  conv.i
    IL_0067:  ldloc.s    V_4
    IL_0069:  stelem.i4
    IL_006a:  ldloc.s    V_4
    IL_006c:  ldarg.0
    IL_006d:  add
    IL_006e:  stloc.s    V_4
    IL_0070:  ldloc.3
    IL_0071:  ldc.i4.1
    IL_0072:  conv.i8
    IL_0073:  add
    IL_0074:  stloc.3
    IL_0075:  ldloc.3
    IL_0076:  ldloc.0
    IL_0077:  blt.un.s   IL_0064

    IL_0079:  ldloc.2
    IL_007a:  ret
  } 

  .method public static int32[]  f18(int32 start,
                                     int32 step,
                                     int32 finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 03 00 00 00 01 00 00 00 01 00 00 00 01 00 
                                                                                                                    00 00 00 00 ) 
    
    .maxstack  5
    .locals init (uint64 V_0,
             uint64 V_1,
             int32[] V_2,
             uint64 V_3,
             int32 V_4)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  brtrue.s   IL_0010

    IL_0004:  ldarg.0
    IL_0005:  ldarg.1
    IL_0006:  ldarg.2
    IL_0007:  call       class [runtime]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32)
    IL_000c:  pop
    IL_000d:  nop
    IL_000e:  br.s       IL_0011

    IL_0010:  nop
    IL_0011:  ldc.i4.0
    IL_0012:  ldarg.1
    IL_0013:  bge.s      IL_002c

    IL_0015:  ldarg.2
    IL_0016:  ldarg.0
    IL_0017:  bge.s      IL_001e

    IL_0019:  ldc.i4.0
    IL_001a:  conv.i8
    IL_001b:  nop
    IL_001c:  br.s       IL_0046

    IL_001e:  ldarg.2
    IL_001f:  conv.i8
    IL_0020:  ldarg.0
    IL_0021:  conv.i8
    IL_0022:  sub
    IL_0023:  ldarg.1
    IL_0024:  conv.i8
    IL_0025:  div.un
    IL_0026:  ldc.i4.1
    IL_0027:  conv.i8
    IL_0028:  add.ovf.un
    IL_0029:  nop
    IL_002a:  br.s       IL_0046

    IL_002c:  ldarg.0
    IL_002d:  ldarg.2
    IL_002e:  bge.s      IL_0035

    IL_0030:  ldc.i4.0
    IL_0031:  conv.i8
    IL_0032:  nop
    IL_0033:  br.s       IL_0046

    IL_0035:  ldarg.0
    IL_0036:  conv.i8
    IL_0037:  ldarg.2
    IL_0038:  conv.i8
    IL_0039:  sub
    IL_003a:  ldarg.1
    IL_003b:  not
    IL_003c:  conv.i8
    IL_003d:  ldc.i4.1
    IL_003e:  conv.i8
    IL_003f:  add
    IL_0040:  conv.i8
    IL_0041:  div.un
    IL_0042:  ldc.i4.1
    IL_0043:  conv.i8
    IL_0044:  add.ovf.un
    IL_0045:  nop
    IL_0046:  stloc.0
    IL_0047:  ldloc.0
    IL_0048:  stloc.1
    IL_0049:  ldloc.1
    IL_004a:  ldc.i4.1
    IL_004b:  conv.i8
    IL_004c:  bge.un.s   IL_0054

    IL_004e:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0053:  ret

    IL_0054:  ldloc.1
    IL_0055:  conv.ovf.i.un
    IL_0056:  newarr     [runtime]System.Int32
    IL_005b:  stloc.2
    IL_005c:  ldc.i4.0
    IL_005d:  conv.i8
    IL_005e:  stloc.3
    IL_005f:  ldarg.0
    IL_0060:  stloc.s    V_4
    IL_0062:  br.s       IL_0075

    IL_0064:  ldloc.2
    IL_0065:  ldloc.3
    IL_0066:  conv.i
    IL_0067:  ldloc.s    V_4
    IL_0069:  stelem.i4
    IL_006a:  ldloc.s    V_4
    IL_006c:  ldarg.1
    IL_006d:  add
    IL_006e:  stloc.s    V_4
    IL_0070:  ldloc.3
    IL_0071:  ldc.i4.1
    IL_0072:  conv.i8
    IL_0073:  add
    IL_0074:  stloc.3
    IL_0075:  ldloc.3
    IL_0076:  ldloc.0
    IL_0077:  blt.un.s   IL_0064

    IL_0079:  ldloc.2
    IL_007a:  ret
  } 

  .method public static int32[]  f19(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> f) cil managed
  {
    
    .maxstack  5
    .locals init (int32 V_0,
             uint64 V_1,
             uint64 V_2,
             int32[] V_3,
             uint64 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.s   10
    IL_000a:  ldloc.0
    IL_000b:  bge.s      IL_0012

    IL_000d:  ldc.i4.0
    IL_000e:  conv.i8
    IL_000f:  nop
    IL_0010:  br.s       IL_001c

    IL_0012:  ldc.i4.s   10
    IL_0014:  conv.i8
    IL_0015:  ldloc.0
    IL_0016:  conv.i8
    IL_0017:  sub
    IL_0018:  ldc.i4.1
    IL_0019:  conv.i8
    IL_001a:  add.ovf.un
    IL_001b:  nop
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  stloc.2
    IL_001f:  ldloc.2
    IL_0020:  ldc.i4.1
    IL_0021:  conv.i8
    IL_0022:  bge.un.s   IL_002a

    IL_0024:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0029:  ret

    IL_002a:  ldloc.2
    IL_002b:  conv.ovf.i.un
    IL_002c:  newarr     [runtime]System.Int32
    IL_0031:  stloc.3
    IL_0032:  ldc.i4.0
    IL_0033:  conv.i8
    IL_0034:  stloc.s    V_4
    IL_0036:  ldloc.0
    IL_0037:  stloc.s    V_5
    IL_0039:  br.s       IL_004f

    IL_003b:  ldloc.3
    IL_003c:  ldloc.s    V_4
    IL_003e:  conv.i
    IL_003f:  ldloc.s    V_5
    IL_0041:  stelem.i4
    IL_0042:  ldloc.s    V_5
    IL_0044:  ldc.i4.1
    IL_0045:  add
    IL_0046:  stloc.s    V_5
    IL_0048:  ldloc.s    V_4
    IL_004a:  ldc.i4.1
    IL_004b:  conv.i8
    IL_004c:  add
    IL_004d:  stloc.s    V_4
    IL_004f:  ldloc.s    V_4
    IL_0051:  ldloc.1
    IL_0052:  blt.un.s   IL_003b

    IL_0054:  ldloc.3
    IL_0055:  ret
  } 

  .method public static int32[]  f20(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> f) cil managed
  {
    
    .maxstack  5
    .locals init (int32 V_0,
             uint64 V_1,
             uint64 V_2,
             int32[] V_3,
             uint64 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.1
    IL_000a:  bge.s      IL_0011

    IL_000c:  ldc.i4.0
    IL_000d:  conv.i8
    IL_000e:  nop
    IL_000f:  br.s       IL_001a

    IL_0011:  ldloc.0
    IL_0012:  conv.i8
    IL_0013:  ldc.i4.1
    IL_0014:  conv.i8
    IL_0015:  sub
    IL_0016:  ldc.i4.1
    IL_0017:  conv.i8
    IL_0018:  add.ovf.un
    IL_0019:  nop
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  stloc.2
    IL_001d:  ldloc.2
    IL_001e:  ldc.i4.1
    IL_001f:  conv.i8
    IL_0020:  bge.un.s   IL_0028

    IL_0022:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0027:  ret

    IL_0028:  ldloc.2
    IL_0029:  conv.ovf.i.un
    IL_002a:  newarr     [runtime]System.Int32
    IL_002f:  stloc.3
    IL_0030:  ldc.i4.0
    IL_0031:  conv.i8
    IL_0032:  stloc.s    V_4
    IL_0034:  ldc.i4.1
    IL_0035:  stloc.s    V_5
    IL_0037:  br.s       IL_004d

    IL_0039:  ldloc.3
    IL_003a:  ldloc.s    V_4
    IL_003c:  conv.i
    IL_003d:  ldloc.s    V_5
    IL_003f:  stelem.i4
    IL_0040:  ldloc.s    V_5
    IL_0042:  ldc.i4.1
    IL_0043:  add
    IL_0044:  stloc.s    V_5
    IL_0046:  ldloc.s    V_4
    IL_0048:  ldc.i4.1
    IL_0049:  conv.i8
    IL_004a:  add
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldloc.1
    IL_0050:  blt.un.s   IL_0039

    IL_0052:  ldloc.3
    IL_0053:  ret
  } 

  .method public static int32[]  f21(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> f,
                                     class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> g) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             uint64 V_2,
             uint64 V_3,
             int32[] V_4,
             uint64 V_5,
             int32 V_6)
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_0007:  stloc.0
    IL_0008:  ldarg.1
    IL_0009:  ldnull
    IL_000a:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_000f:  stloc.1
    IL_0010:  ldloc.1
    IL_0011:  ldloc.0
    IL_0012:  bge.s      IL_0019

    IL_0014:  ldc.i4.0
    IL_0015:  conv.i8
    IL_0016:  nop
    IL_0017:  br.s       IL_0022

    IL_0019:  ldloc.1
    IL_001a:  conv.i8
    IL_001b:  ldloc.0
    IL_001c:  conv.i8
    IL_001d:  sub
    IL_001e:  ldc.i4.1
    IL_001f:  conv.i8
    IL_0020:  add.ovf.un
    IL_0021:  nop
    IL_0022:  stloc.2
    IL_0023:  ldloc.2
    IL_0024:  stloc.3
    IL_0025:  ldloc.3
    IL_0026:  ldc.i4.1
    IL_0027:  conv.i8
    IL_0028:  bge.un.s   IL_0030

    IL_002a:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_002f:  ret

    IL_0030:  ldloc.3
    IL_0031:  conv.ovf.i.un
    IL_0032:  newarr     [runtime]System.Int32
    IL_0037:  stloc.s    V_4
    IL_0039:  ldc.i4.0
    IL_003a:  conv.i8
    IL_003b:  stloc.s    V_5
    IL_003d:  ldloc.0
    IL_003e:  stloc.s    V_6
    IL_0040:  br.s       IL_0057

    IL_0042:  ldloc.s    V_4
    IL_0044:  ldloc.s    V_5
    IL_0046:  conv.i
    IL_0047:  ldloc.s    V_6
    IL_0049:  stelem.i4
    IL_004a:  ldloc.s    V_6
    IL_004c:  ldc.i4.1
    IL_004d:  add
    IL_004e:  stloc.s    V_6
    IL_0050:  ldloc.s    V_5
    IL_0052:  ldc.i4.1
    IL_0053:  conv.i8
    IL_0054:  add
    IL_0055:  stloc.s    V_5
    IL_0057:  ldloc.s    V_5
    IL_0059:  ldloc.2
    IL_005a:  blt.un.s   IL_0042

    IL_005c:  ldloc.s    V_4
    IL_005e:  ret
  } 

  .method public static int32[]  f22(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> f) cil managed
  {
    
    .maxstack  5
    .locals init (int32 V_0,
             uint64 V_1,
             uint64 V_2,
             int32[] V_3,
             uint64 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_0007:  stloc.0
    IL_0008:  ldc.i4.s   10
    IL_000a:  ldloc.0
    IL_000b:  bge.s      IL_0012

    IL_000d:  ldc.i4.0
    IL_000e:  conv.i8
    IL_000f:  nop
    IL_0010:  br.s       IL_001c

    IL_0012:  ldc.i4.s   10
    IL_0014:  conv.i8
    IL_0015:  ldloc.0
    IL_0016:  conv.i8
    IL_0017:  sub
    IL_0018:  ldc.i4.1
    IL_0019:  conv.i8
    IL_001a:  add.ovf.un
    IL_001b:  nop
    IL_001c:  stloc.1
    IL_001d:  ldloc.1
    IL_001e:  stloc.2
    IL_001f:  ldloc.2
    IL_0020:  ldc.i4.1
    IL_0021:  conv.i8
    IL_0022:  bge.un.s   IL_002a

    IL_0024:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0029:  ret

    IL_002a:  ldloc.2
    IL_002b:  conv.ovf.i.un
    IL_002c:  newarr     [runtime]System.Int32
    IL_0031:  stloc.3
    IL_0032:  ldc.i4.0
    IL_0033:  conv.i8
    IL_0034:  stloc.s    V_4
    IL_0036:  ldloc.0
    IL_0037:  stloc.s    V_5
    IL_0039:  br.s       IL_004f

    IL_003b:  ldloc.3
    IL_003c:  ldloc.s    V_4
    IL_003e:  conv.i
    IL_003f:  ldloc.s    V_5
    IL_0041:  stelem.i4
    IL_0042:  ldloc.s    V_5
    IL_0044:  ldc.i4.1
    IL_0045:  add
    IL_0046:  stloc.s    V_5
    IL_0048:  ldloc.s    V_4
    IL_004a:  ldc.i4.1
    IL_004b:  conv.i8
    IL_004c:  add
    IL_004d:  stloc.s    V_4
    IL_004f:  ldloc.s    V_4
    IL_0051:  ldloc.1
    IL_0052:  blt.un.s   IL_003b

    IL_0054:  ldloc.3
    IL_0055:  ret
  } 

  .method public static int32[]  f23(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> f) cil managed
  {
    
    .maxstack  5
    .locals init (int32 V_0,
             uint64 V_1,
             uint64 V_2,
             int32[] V_3,
             uint64 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  brtrue.s   IL_0018

    IL_000b:  ldc.i4.1
    IL_000c:  ldloc.0
    IL_000d:  ldc.i4.s   10
    IL_000f:  call       class [runtime]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32)
    IL_0014:  pop
    IL_0015:  nop
    IL_0016:  br.s       IL_0019

    IL_0018:  nop
    IL_0019:  ldc.i4.0
    IL_001a:  ldloc.0
    IL_001b:  bge.s      IL_0036

    IL_001d:  ldc.i4.s   10
    IL_001f:  ldc.i4.1
    IL_0020:  bge.s      IL_0027

    IL_0022:  ldc.i4.0
    IL_0023:  conv.i8
    IL_0024:  nop
    IL_0025:  br.s       IL_0052

    IL_0027:  ldc.i4.s   10
    IL_0029:  conv.i8
    IL_002a:  ldc.i4.1
    IL_002b:  conv.i8
    IL_002c:  sub
    IL_002d:  ldloc.0
    IL_002e:  conv.i8
    IL_002f:  div.un
    IL_0030:  ldc.i4.1
    IL_0031:  conv.i8
    IL_0032:  add.ovf.un
    IL_0033:  nop
    IL_0034:  br.s       IL_0052

    IL_0036:  ldc.i4.1
    IL_0037:  ldc.i4.s   10
    IL_0039:  bge.s      IL_0040

    IL_003b:  ldc.i4.0
    IL_003c:  conv.i8
    IL_003d:  nop
    IL_003e:  br.s       IL_0052

    IL_0040:  ldc.i4.1
    IL_0041:  conv.i8
    IL_0042:  ldc.i4.s   10
    IL_0044:  conv.i8
    IL_0045:  sub
    IL_0046:  ldloc.0
    IL_0047:  not
    IL_0048:  conv.i8
    IL_0049:  ldc.i4.1
    IL_004a:  conv.i8
    IL_004b:  add
    IL_004c:  conv.i8
    IL_004d:  div.un
    IL_004e:  ldc.i4.1
    IL_004f:  conv.i8
    IL_0050:  add.ovf.un
    IL_0051:  nop
    IL_0052:  stloc.1
    IL_0053:  ldloc.1
    IL_0054:  stloc.2
    IL_0055:  ldloc.2
    IL_0056:  ldc.i4.1
    IL_0057:  conv.i8
    IL_0058:  bge.un.s   IL_0060

    IL_005a:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_005f:  ret

    IL_0060:  ldloc.2
    IL_0061:  conv.ovf.i.un
    IL_0062:  newarr     [runtime]System.Int32
    IL_0067:  stloc.3
    IL_0068:  ldc.i4.0
    IL_0069:  conv.i8
    IL_006a:  stloc.s    V_4
    IL_006c:  ldc.i4.1
    IL_006d:  stloc.s    V_5
    IL_006f:  br.s       IL_0085

    IL_0071:  ldloc.3
    IL_0072:  ldloc.s    V_4
    IL_0074:  conv.i
    IL_0075:  ldloc.s    V_5
    IL_0077:  stelem.i4
    IL_0078:  ldloc.s    V_5
    IL_007a:  ldloc.0
    IL_007b:  add
    IL_007c:  stloc.s    V_5
    IL_007e:  ldloc.s    V_4
    IL_0080:  ldc.i4.1
    IL_0081:  conv.i8
    IL_0082:  add
    IL_0083:  stloc.s    V_4
    IL_0085:  ldloc.s    V_4
    IL_0087:  ldloc.1
    IL_0088:  blt.un.s   IL_0071

    IL_008a:  ldloc.3
    IL_008b:  ret
  } 

  .method public static int32[]  f24(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> f) cil managed
  {
    
    .maxstack  5
    .locals init (int32 V_0,
             uint64 V_1,
             uint64 V_2,
             int32[] V_3,
             uint64 V_4,
             int32 V_5)
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldc.i4.1
    IL_000a:  bge.s      IL_0011

    IL_000c:  ldc.i4.0
    IL_000d:  conv.i8
    IL_000e:  nop
    IL_000f:  br.s       IL_001a

    IL_0011:  ldloc.0
    IL_0012:  conv.i8
    IL_0013:  ldc.i4.1
    IL_0014:  conv.i8
    IL_0015:  sub
    IL_0016:  ldc.i4.1
    IL_0017:  conv.i8
    IL_0018:  add.ovf.un
    IL_0019:  nop
    IL_001a:  stloc.1
    IL_001b:  ldloc.1
    IL_001c:  stloc.2
    IL_001d:  ldloc.2
    IL_001e:  ldc.i4.1
    IL_001f:  conv.i8
    IL_0020:  bge.un.s   IL_0028

    IL_0022:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_0027:  ret

    IL_0028:  ldloc.2
    IL_0029:  conv.ovf.i.un
    IL_002a:  newarr     [runtime]System.Int32
    IL_002f:  stloc.3
    IL_0030:  ldc.i4.0
    IL_0031:  conv.i8
    IL_0032:  stloc.s    V_4
    IL_0034:  ldc.i4.1
    IL_0035:  stloc.s    V_5
    IL_0037:  br.s       IL_004d

    IL_0039:  ldloc.3
    IL_003a:  ldloc.s    V_4
    IL_003c:  conv.i
    IL_003d:  ldloc.s    V_5
    IL_003f:  stelem.i4
    IL_0040:  ldloc.s    V_5
    IL_0042:  ldc.i4.1
    IL_0043:  add
    IL_0044:  stloc.s    V_5
    IL_0046:  ldloc.s    V_4
    IL_0048:  ldc.i4.1
    IL_0049:  conv.i8
    IL_004a:  add
    IL_004b:  stloc.s    V_4
    IL_004d:  ldloc.s    V_4
    IL_004f:  ldloc.1
    IL_0050:  blt.un.s   IL_0039

    IL_0052:  ldloc.3
    IL_0053:  ret
  } 

  .method public static int32[]  f25(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> f,
                                     class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> g,
                                     class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32> h) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 03 00 00 00 01 00 00 00 01 00 00 00 01 00 
                                                                                                                    00 00 00 00 ) 
    
    .maxstack  5
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             uint64 V_3,
             uint64 V_4,
             int32[] V_5,
             uint64 V_6,
             int32 V_7)
    IL_0000:  ldarg.0
    IL_0001:  ldnull
    IL_0002:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_0007:  stloc.0
    IL_0008:  ldarg.1
    IL_0009:  ldnull
    IL_000a:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_000f:  stloc.1
    IL_0010:  ldarg.2
    IL_0011:  ldnull
    IL_0012:  callvirt   instance !1 class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,int32>::Invoke(!0)
    IL_0017:  stloc.2
    IL_0018:  ldloc.1
    IL_0019:  brtrue.s   IL_0027

    IL_001b:  ldloc.0
    IL_001c:  ldloc.1
    IL_001d:  ldloc.2
    IL_001e:  call       class [runtime]System.Collections.Generic.IEnumerable`1<int32> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeInt32(int32,
                                                                                                                                                                           int32,
                                                                                                                                                                           int32)
    IL_0023:  pop
    IL_0024:  nop
    IL_0025:  br.s       IL_0028

    IL_0027:  nop
    IL_0028:  ldc.i4.0
    IL_0029:  ldloc.1
    IL_002a:  bge.s      IL_0043

    IL_002c:  ldloc.2
    IL_002d:  ldloc.0
    IL_002e:  bge.s      IL_0035

    IL_0030:  ldc.i4.0
    IL_0031:  conv.i8
    IL_0032:  nop
    IL_0033:  br.s       IL_005d

    IL_0035:  ldloc.2
    IL_0036:  conv.i8
    IL_0037:  ldloc.0
    IL_0038:  conv.i8
    IL_0039:  sub
    IL_003a:  ldloc.1
    IL_003b:  conv.i8
    IL_003c:  div.un
    IL_003d:  ldc.i4.1
    IL_003e:  conv.i8
    IL_003f:  add.ovf.un
    IL_0040:  nop
    IL_0041:  br.s       IL_005d

    IL_0043:  ldloc.0
    IL_0044:  ldloc.2
    IL_0045:  bge.s      IL_004c

    IL_0047:  ldc.i4.0
    IL_0048:  conv.i8
    IL_0049:  nop
    IL_004a:  br.s       IL_005d

    IL_004c:  ldloc.0
    IL_004d:  conv.i8
    IL_004e:  ldloc.2
    IL_004f:  conv.i8
    IL_0050:  sub
    IL_0051:  ldloc.1
    IL_0052:  not
    IL_0053:  conv.i8
    IL_0054:  ldc.i4.1
    IL_0055:  conv.i8
    IL_0056:  add
    IL_0057:  conv.i8
    IL_0058:  div.un
    IL_0059:  ldc.i4.1
    IL_005a:  conv.i8
    IL_005b:  add.ovf.un
    IL_005c:  nop
    IL_005d:  stloc.3
    IL_005e:  ldloc.3
    IL_005f:  stloc.s    V_4
    IL_0061:  ldloc.s    V_4
    IL_0063:  ldc.i4.1
    IL_0064:  conv.i8
    IL_0065:  bge.un.s   IL_006d

    IL_0067:  call       !!0[] [runtime]System.Array::Empty<int32>()
    IL_006c:  ret

    IL_006d:  ldloc.s    V_4
    IL_006f:  conv.ovf.i.un
    IL_0070:  newarr     [runtime]System.Int32
    IL_0075:  stloc.s    V_5
    IL_0077:  ldc.i4.0
    IL_0078:  conv.i8
    IL_0079:  stloc.s    V_6
    IL_007b:  ldloc.0
    IL_007c:  stloc.s    V_7
    IL_007e:  br.s       IL_0095

    IL_0080:  ldloc.s    V_5
    IL_0082:  ldloc.s    V_6
    IL_0084:  conv.i
    IL_0085:  ldloc.s    V_7
    IL_0087:  stelem.i4
    IL_0088:  ldloc.s    V_7
    IL_008a:  ldloc.1
    IL_008b:  add
    IL_008c:  stloc.s    V_7
    IL_008e:  ldloc.s    V_6
    IL_0090:  ldc.i4.1
    IL_0091:  conv.i8
    IL_0092:  add
    IL_0093:  stloc.s    V_6
    IL_0095:  ldloc.s    V_6
    IL_0097:  ldloc.3
    IL_0098:  blt.un.s   IL_0080

    IL_009a:  ldloc.s    V_5
    IL_009c:  ret
  } 

} 

.class private abstract auto ansi sealed '<StartupCode$assembly>'.$assembly
       extends [runtime]System.Object
{
  .method public static void  main@() cil managed
  {
    .entrypoint
    
    .maxstack  8
    IL_0000:  ret
  } 

} 






