




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
  .method public specialname static native uint get_c() cil managed
  {
    
    .maxstack  8
    IL_0000:  ldsfld     native uint '<StartupCode$assembly>'.$assembly::c@1
    IL_0005:  ret
  } 

  .method public specialname static void set_c(native uint 'value') cil managed
  {
    
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  stsfld     native uint '<StartupCode$assembly>'.$assembly::c@1
    IL_0006:  ret
  } 

  .method public static void  f0() cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1)
    IL_0000:  ldc.i8     0x0
    IL_0009:  conv.u
    IL_000a:  stloc.0
    IL_000b:  ldc.i8     0xa
    IL_0014:  conv.u
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0038

    IL_0018:  ldloc.1
    IL_0019:  call       void assembly::set_c(native uint)
    IL_001e:  ldloc.1
    IL_001f:  ldc.i8     0x1
    IL_0028:  conv.u
    IL_0029:  add
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  ldc.i8     0x1
    IL_0035:  conv.u
    IL_0036:  add
    IL_0037:  stloc.0
    IL_0038:  ldloc.0
    IL_0039:  ldc.i8     0x0
    IL_0042:  conv.u
    IL_0043:  blt.un.s   IL_0018

    IL_0045:  ret
  } 

  .method public static void  f00() cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1)
    IL_0000:  ldc.i8     0x0
    IL_0009:  conv.u
    IL_000a:  stloc.0
    IL_000b:  ldc.i8     0xa
    IL_0014:  conv.u
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0038

    IL_0018:  ldloc.1
    IL_0019:  call       void assembly::set_c(native uint)
    IL_001e:  ldloc.1
    IL_001f:  ldc.i8     0x1
    IL_0028:  conv.u
    IL_0029:  add
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  ldc.i8     0x1
    IL_0035:  conv.u
    IL_0036:  add
    IL_0037:  stloc.0
    IL_0038:  ldloc.0
    IL_0039:  ldc.i8     0x0
    IL_0042:  conv.u
    IL_0043:  blt.un.s   IL_0018

    IL_0045:  ret
  } 

  .method public static void  f1() cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1)
    IL_0000:  ldc.i8     0x0
    IL_0009:  conv.u
    IL_000a:  stloc.0
    IL_000b:  ldc.i8     0x1
    IL_0014:  conv.u
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0038

    IL_0018:  ldloc.1
    IL_0019:  call       void assembly::set_c(native uint)
    IL_001e:  ldloc.1
    IL_001f:  ldc.i8     0x1
    IL_0028:  conv.u
    IL_0029:  add
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  ldc.i8     0x1
    IL_0035:  conv.u
    IL_0036:  add
    IL_0037:  stloc.0
    IL_0038:  ldloc.0
    IL_0039:  ldc.i8     0xa
    IL_0042:  conv.u
    IL_0043:  blt.un.s   IL_0018

    IL_0045:  ret
  } 

  .method public static void  f2(native uint start) cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1,
             native uint V_2,
             native uint V_3)
    IL_0000:  ldc.i8     0xa
    IL_0009:  conv.u
    IL_000a:  ldarg.0
    IL_000b:  bge.un.s   IL_001a

    IL_000d:  ldc.i8     0x0
    IL_0016:  conv.u
    IL_0017:  nop
    IL_0018:  br.s       IL_0027

    IL_001a:  ldc.i8     0xa
    IL_0023:  conv.u
    IL_0024:  ldarg.0
    IL_0025:  sub
    IL_0026:  nop
    IL_0027:  stloc.0
    IL_0028:  sizeof     [runtime]System.IntPtr
    IL_002e:  ldc.i4.4
    IL_002f:  bne.un.s   IL_0041

    IL_0031:  ldloc.0
    IL_0032:  ldc.i8     0xffffffff
    IL_003b:  conv.u
    IL_003c:  ceq
    IL_003e:  nop
    IL_003f:  br.s       IL_004f

    IL_0041:  ldloc.0
    IL_0042:  ldc.i8     0xffffffffffffffff
    IL_004b:  conv.u
    IL_004c:  ceq
    IL_004e:  nop
    IL_004f:  brfalse.s  IL_00ae

    IL_0051:  ldc.i8     0x0
    IL_005a:  conv.u
    IL_005b:  stloc.1
    IL_005c:  ldarg.0
    IL_005d:  stloc.2
    IL_005e:  ldloc.2
    IL_005f:  call       void assembly::set_c(native uint)
    IL_0064:  ldloc.2
    IL_0065:  ldc.i8     0x1
    IL_006e:  conv.u
    IL_006f:  add
    IL_0070:  stloc.2
    IL_0071:  ldloc.1
    IL_0072:  ldc.i8     0x1
    IL_007b:  conv.u
    IL_007c:  add
    IL_007d:  stloc.1
    IL_007e:  br.s       IL_00a0

    IL_0080:  ldloc.2
    IL_0081:  call       void assembly::set_c(native uint)
    IL_0086:  ldloc.2
    IL_0087:  ldc.i8     0x1
    IL_0090:  conv.u
    IL_0091:  add
    IL_0092:  stloc.2
    IL_0093:  ldloc.1
    IL_0094:  ldc.i8     0x1
    IL_009d:  conv.u
    IL_009e:  add
    IL_009f:  stloc.1
    IL_00a0:  ldloc.1
    IL_00a1:  ldc.i8     0x0
    IL_00aa:  conv.u
    IL_00ab:  bgt.un.s   IL_0080

    IL_00ad:  ret

    IL_00ae:  ldc.i8     0xa
    IL_00b7:  conv.u
    IL_00b8:  ldarg.0
    IL_00b9:  bge.un.s   IL_00c8

    IL_00bb:  ldc.i8     0x0
    IL_00c4:  conv.u
    IL_00c5:  nop
    IL_00c6:  br.s       IL_00e0

    IL_00c8:  ldc.i8     0xa
    IL_00d1:  conv.u
    IL_00d2:  ldarg.0
    IL_00d3:  sub
    IL_00d4:  ldc.i8     0x1
    IL_00dd:  conv.u
    IL_00de:  add.ovf.un
    IL_00df:  nop
    IL_00e0:  stloc.1
    IL_00e1:  ldc.i8     0x0
    IL_00ea:  conv.u
    IL_00eb:  stloc.2
    IL_00ec:  ldarg.0
    IL_00ed:  stloc.3
    IL_00ee:  br.s       IL_0110

    IL_00f0:  ldloc.3
    IL_00f1:  call       void assembly::set_c(native uint)
    IL_00f6:  ldloc.3
    IL_00f7:  ldc.i8     0x1
    IL_0100:  conv.u
    IL_0101:  add
    IL_0102:  stloc.3
    IL_0103:  ldloc.2
    IL_0104:  ldc.i8     0x1
    IL_010d:  conv.u
    IL_010e:  add
    IL_010f:  stloc.2
    IL_0110:  ldloc.2
    IL_0111:  ldloc.1
    IL_0112:  blt.un.s   IL_00f0

    IL_0114:  ret
  } 

  .method public static void  f3(native uint finish) cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1,
             native uint V_2,
             native uint V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i8     0x1
    IL_000a:  conv.u
    IL_000b:  bge.un.s   IL_001a

    IL_000d:  ldc.i8     0x0
    IL_0016:  conv.u
    IL_0017:  nop
    IL_0018:  br.s       IL_0027

    IL_001a:  ldarg.0
    IL_001b:  ldc.i8     0x1
    IL_0024:  conv.u
    IL_0025:  sub
    IL_0026:  nop
    IL_0027:  stloc.0
    IL_0028:  sizeof     [runtime]System.IntPtr
    IL_002e:  ldc.i4.4
    IL_002f:  bne.un.s   IL_0041

    IL_0031:  ldloc.0
    IL_0032:  ldc.i8     0xffffffff
    IL_003b:  conv.u
    IL_003c:  ceq
    IL_003e:  nop
    IL_003f:  br.s       IL_004f

    IL_0041:  ldloc.0
    IL_0042:  ldc.i8     0xffffffffffffffff
    IL_004b:  conv.u
    IL_004c:  ceq
    IL_004e:  nop
    IL_004f:  brfalse.s  IL_00b7

    IL_0051:  ldc.i8     0x0
    IL_005a:  conv.u
    IL_005b:  stloc.1
    IL_005c:  ldc.i8     0x1
    IL_0065:  conv.u
    IL_0066:  stloc.2
    IL_0067:  ldloc.2
    IL_0068:  call       void assembly::set_c(native uint)
    IL_006d:  ldloc.2
    IL_006e:  ldc.i8     0x1
    IL_0077:  conv.u
    IL_0078:  add
    IL_0079:  stloc.2
    IL_007a:  ldloc.1
    IL_007b:  ldc.i8     0x1
    IL_0084:  conv.u
    IL_0085:  add
    IL_0086:  stloc.1
    IL_0087:  br.s       IL_00a9

    IL_0089:  ldloc.2
    IL_008a:  call       void assembly::set_c(native uint)
    IL_008f:  ldloc.2
    IL_0090:  ldc.i8     0x1
    IL_0099:  conv.u
    IL_009a:  add
    IL_009b:  stloc.2
    IL_009c:  ldloc.1
    IL_009d:  ldc.i8     0x1
    IL_00a6:  conv.u
    IL_00a7:  add
    IL_00a8:  stloc.1
    IL_00a9:  ldloc.1
    IL_00aa:  ldc.i8     0x0
    IL_00b3:  conv.u
    IL_00b4:  bgt.un.s   IL_0089

    IL_00b6:  ret

    IL_00b7:  ldarg.0
    IL_00b8:  ldc.i8     0x1
    IL_00c1:  conv.u
    IL_00c2:  bge.un.s   IL_00d1

    IL_00c4:  ldc.i8     0x0
    IL_00cd:  conv.u
    IL_00ce:  nop
    IL_00cf:  br.s       IL_00e9

    IL_00d1:  ldarg.0
    IL_00d2:  ldc.i8     0x1
    IL_00db:  conv.u
    IL_00dc:  sub
    IL_00dd:  ldc.i8     0x1
    IL_00e6:  conv.u
    IL_00e7:  add.ovf.un
    IL_00e8:  nop
    IL_00e9:  stloc.1
    IL_00ea:  ldc.i8     0x0
    IL_00f3:  conv.u
    IL_00f4:  stloc.2
    IL_00f5:  ldc.i8     0x1
    IL_00fe:  conv.u
    IL_00ff:  stloc.3
    IL_0100:  br.s       IL_0122

    IL_0102:  ldloc.3
    IL_0103:  call       void assembly::set_c(native uint)
    IL_0108:  ldloc.3
    IL_0109:  ldc.i8     0x1
    IL_0112:  conv.u
    IL_0113:  add
    IL_0114:  stloc.3
    IL_0115:  ldloc.2
    IL_0116:  ldc.i8     0x1
    IL_011f:  conv.u
    IL_0120:  add
    IL_0121:  stloc.2
    IL_0122:  ldloc.2
    IL_0123:  ldloc.1
    IL_0124:  blt.un.s   IL_0102

    IL_0126:  ret
  } 

  .method public static void  f4(native uint start,
                                 native uint finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1,
             native uint V_2,
             native uint V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldarg.0
    IL_0002:  bge.un.s   IL_0011

    IL_0004:  ldc.i8     0x0
    IL_000d:  conv.u
    IL_000e:  nop
    IL_000f:  br.s       IL_0015

    IL_0011:  ldarg.1
    IL_0012:  ldarg.0
    IL_0013:  sub
    IL_0014:  nop
    IL_0015:  stloc.0
    IL_0016:  sizeof     [runtime]System.IntPtr
    IL_001c:  ldc.i4.4
    IL_001d:  bne.un.s   IL_002f

    IL_001f:  ldloc.0
    IL_0020:  ldc.i8     0xffffffff
    IL_0029:  conv.u
    IL_002a:  ceq
    IL_002c:  nop
    IL_002d:  br.s       IL_003d

    IL_002f:  ldloc.0
    IL_0030:  ldc.i8     0xffffffffffffffff
    IL_0039:  conv.u
    IL_003a:  ceq
    IL_003c:  nop
    IL_003d:  brfalse.s  IL_009c

    IL_003f:  ldc.i8     0x0
    IL_0048:  conv.u
    IL_0049:  stloc.1
    IL_004a:  ldarg.0
    IL_004b:  stloc.2
    IL_004c:  ldloc.2
    IL_004d:  call       void assembly::set_c(native uint)
    IL_0052:  ldloc.2
    IL_0053:  ldc.i8     0x1
    IL_005c:  conv.u
    IL_005d:  add
    IL_005e:  stloc.2
    IL_005f:  ldloc.1
    IL_0060:  ldc.i8     0x1
    IL_0069:  conv.u
    IL_006a:  add
    IL_006b:  stloc.1
    IL_006c:  br.s       IL_008e

    IL_006e:  ldloc.2
    IL_006f:  call       void assembly::set_c(native uint)
    IL_0074:  ldloc.2
    IL_0075:  ldc.i8     0x1
    IL_007e:  conv.u
    IL_007f:  add
    IL_0080:  stloc.2
    IL_0081:  ldloc.1
    IL_0082:  ldc.i8     0x1
    IL_008b:  conv.u
    IL_008c:  add
    IL_008d:  stloc.1
    IL_008e:  ldloc.1
    IL_008f:  ldc.i8     0x0
    IL_0098:  conv.u
    IL_0099:  bgt.un.s   IL_006e

    IL_009b:  ret

    IL_009c:  ldarg.1
    IL_009d:  ldarg.0
    IL_009e:  bge.un.s   IL_00ad

    IL_00a0:  ldc.i8     0x0
    IL_00a9:  conv.u
    IL_00aa:  nop
    IL_00ab:  br.s       IL_00bc

    IL_00ad:  ldarg.1
    IL_00ae:  ldarg.0
    IL_00af:  sub
    IL_00b0:  ldc.i8     0x1
    IL_00b9:  conv.u
    IL_00ba:  add.ovf.un
    IL_00bb:  nop
    IL_00bc:  stloc.1
    IL_00bd:  ldc.i8     0x0
    IL_00c6:  conv.u
    IL_00c7:  stloc.2
    IL_00c8:  ldarg.0
    IL_00c9:  stloc.3
    IL_00ca:  br.s       IL_00ec

    IL_00cc:  ldloc.3
    IL_00cd:  call       void assembly::set_c(native uint)
    IL_00d2:  ldloc.3
    IL_00d3:  ldc.i8     0x1
    IL_00dc:  conv.u
    IL_00dd:  add
    IL_00de:  stloc.3
    IL_00df:  ldloc.2
    IL_00e0:  ldc.i8     0x1
    IL_00e9:  conv.u
    IL_00ea:  add
    IL_00eb:  stloc.2
    IL_00ec:  ldloc.2
    IL_00ed:  ldloc.1
    IL_00ee:  blt.un.s   IL_00cc

    IL_00f0:  ret
  } 

  .method public static void  f5() cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1)
    IL_0000:  ldc.i8     0x0
    IL_0009:  conv.u
    IL_000a:  stloc.0
    IL_000b:  ldc.i8     0x1
    IL_0014:  conv.u
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0038

    IL_0018:  ldloc.1
    IL_0019:  call       void assembly::set_c(native uint)
    IL_001e:  ldloc.1
    IL_001f:  ldc.i8     0x1
    IL_0028:  conv.u
    IL_0029:  add
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  ldc.i8     0x1
    IL_0035:  conv.u
    IL_0036:  add
    IL_0037:  stloc.0
    IL_0038:  ldloc.0
    IL_0039:  ldc.i8     0xa
    IL_0042:  conv.u
    IL_0043:  blt.un.s   IL_0018

    IL_0045:  ret
  } 

  .method public static void  f6() cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1)
    IL_0000:  ldc.i8     0x0
    IL_0009:  conv.u
    IL_000a:  stloc.0
    IL_000b:  ldc.i8     0x1
    IL_0014:  conv.u
    IL_0015:  stloc.1
    IL_0016:  br.s       IL_0038

    IL_0018:  ldloc.1
    IL_0019:  call       void assembly::set_c(native uint)
    IL_001e:  ldloc.1
    IL_001f:  ldc.i8     0x2
    IL_0028:  conv.u
    IL_0029:  add
    IL_002a:  stloc.1
    IL_002b:  ldloc.0
    IL_002c:  ldc.i8     0x1
    IL_0035:  conv.u
    IL_0036:  add
    IL_0037:  stloc.0
    IL_0038:  ldloc.0
    IL_0039:  ldc.i8     0x5
    IL_0042:  conv.u
    IL_0043:  blt.un.s   IL_0018

    IL_0045:  ret
  } 

  .method public static void  f7(native uint start) cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1,
             native uint V_2)
    IL_0000:  ldc.i8     0xa
    IL_0009:  conv.u
    IL_000a:  ldarg.0
    IL_000b:  bge.un.s   IL_001a

    IL_000d:  ldc.i8     0x0
    IL_0016:  conv.u
    IL_0017:  nop
    IL_0018:  br.s       IL_003d

    IL_001a:  ldc.i8     0xa
    IL_0023:  conv.u
    IL_0024:  ldarg.0
    IL_0025:  sub
    IL_0026:  ldc.i8     0x2
    IL_002f:  conv.u
    IL_0030:  div.un
    IL_0031:  ldc.i8     0x1
    IL_003a:  conv.u
    IL_003b:  add.ovf.un
    IL_003c:  nop
    IL_003d:  stloc.0
    IL_003e:  ldc.i8     0x0
    IL_0047:  conv.u
    IL_0048:  stloc.1
    IL_0049:  ldarg.0
    IL_004a:  stloc.2
    IL_004b:  br.s       IL_006d

    IL_004d:  ldloc.2
    IL_004e:  call       void assembly::set_c(native uint)
    IL_0053:  ldloc.2
    IL_0054:  ldc.i8     0x2
    IL_005d:  conv.u
    IL_005e:  add
    IL_005f:  stloc.2
    IL_0060:  ldloc.1
    IL_0061:  ldc.i8     0x1
    IL_006a:  conv.u
    IL_006b:  add
    IL_006c:  stloc.1
    IL_006d:  ldloc.1
    IL_006e:  ldloc.0
    IL_006f:  blt.un.s   IL_004d

    IL_0071:  ret
  } 

  .method public static void  f8(native uint step) cil managed
  {
    
    .maxstack  5
    .locals init (native uint V_0,
             native uint V_1,
             native uint V_2,
             native uint V_3)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i8     0x0
    IL_000a:  conv.u
    IL_000b:  bne.un.s   IL_002b

    IL_000d:  ldc.i8     0x1
    IL_0016:  conv.u
    IL_0017:  ldarg.0
    IL_0018:  ldc.i8     0xa
    IL_0021:  conv.u
    IL_0022:  call       class [runtime]System.Collections.Generic.IEnumerable`1<native uint> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUIntPtr(native uint,
                                                                                                                                                                                   native uint,
                                                                                                                                                                                   native uint)
    IL_0027:  pop
    IL_0028:  nop
    IL_0029:  br.s       IL_002c

    IL_002b:  nop
    IL_002c:  ldc.i8     0xa
    IL_0035:  conv.u
    IL_0036:  ldc.i8     0x1
    IL_003f:  conv.u
    IL_0040:  bge.un.s   IL_004f

    IL_0042:  ldc.i8     0x0
    IL_004b:  conv.u
    IL_004c:  nop
    IL_004d:  br.s       IL_0067

    IL_004f:  ldc.i8     0xa
    IL_0058:  conv.u
    IL_0059:  ldc.i8     0x1
    IL_0062:  conv.u
    IL_0063:  sub
    IL_0064:  ldarg.0
    IL_0065:  div.un
    IL_0066:  nop
    IL_0067:  stloc.0
    IL_0068:  sizeof     [runtime]System.IntPtr
    IL_006e:  ldc.i4.4
    IL_006f:  bne.un.s   IL_0081

    IL_0071:  ldloc.0
    IL_0072:  ldc.i8     0xffffffff
    IL_007b:  conv.u
    IL_007c:  ceq
    IL_007e:  nop
    IL_007f:  br.s       IL_008f

    IL_0081:  ldloc.0
    IL_0082:  ldc.i8     0xffffffffffffffff
    IL_008b:  conv.u
    IL_008c:  ceq
    IL_008e:  nop
    IL_008f:  brfalse.s  IL_00e5

    IL_0091:  ldc.i8     0x0
    IL_009a:  conv.u
    IL_009b:  stloc.1
    IL_009c:  ldc.i8     0x1
    IL_00a5:  conv.u
    IL_00a6:  stloc.2
    IL_00a7:  ldloc.2
    IL_00a8:  call       void assembly::set_c(native uint)
    IL_00ad:  ldloc.2
    IL_00ae:  ldarg.0
    IL_00af:  add
    IL_00b0:  stloc.2
    IL_00b1:  ldloc.1
    IL_00b2:  ldc.i8     0x1
    IL_00bb:  conv.u
    IL_00bc:  add
    IL_00bd:  stloc.1
    IL_00be:  br.s       IL_00d7

    IL_00c0:  ldloc.2
    IL_00c1:  call       void assembly::set_c(native uint)
    IL_00c6:  ldloc.2
    IL_00c7:  ldarg.0
    IL_00c8:  add
    IL_00c9:  stloc.2
    IL_00ca:  ldloc.1
    IL_00cb:  ldc.i8     0x1
    IL_00d4:  conv.u
    IL_00d5:  add
    IL_00d6:  stloc.1
    IL_00d7:  ldloc.1
    IL_00d8:  ldc.i8     0x0
    IL_00e1:  conv.u
    IL_00e2:  bgt.un.s   IL_00c0

    IL_00e4:  ret

    IL_00e5:  ldarg.0
    IL_00e6:  ldc.i8     0x0
    IL_00ef:  conv.u
    IL_00f0:  bne.un.s   IL_0110

    IL_00f2:  ldc.i8     0x1
    IL_00fb:  conv.u
    IL_00fc:  ldarg.0
    IL_00fd:  ldc.i8     0xa
    IL_0106:  conv.u
    IL_0107:  call       class [runtime]System.Collections.Generic.IEnumerable`1<native uint> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUIntPtr(native uint,
                                                                                                                                                                                   native uint,
                                                                                                                                                                                   native uint)
    IL_010c:  pop
    IL_010d:  nop
    IL_010e:  br.s       IL_0111

    IL_0110:  nop
    IL_0111:  ldc.i8     0xa
    IL_011a:  conv.u
    IL_011b:  ldc.i8     0x1
    IL_0124:  conv.u
    IL_0125:  bge.un.s   IL_0134

    IL_0127:  ldc.i8     0x0
    IL_0130:  conv.u
    IL_0131:  nop
    IL_0132:  br.s       IL_0157

    IL_0134:  ldc.i8     0xa
    IL_013d:  conv.u
    IL_013e:  ldc.i8     0x1
    IL_0147:  conv.u
    IL_0148:  sub
    IL_0149:  ldarg.0
    IL_014a:  div.un
    IL_014b:  ldc.i8     0x1
    IL_0154:  conv.u
    IL_0155:  add.ovf.un
    IL_0156:  nop
    IL_0157:  stloc.1
    IL_0158:  ldc.i8     0x0
    IL_0161:  conv.u
    IL_0162:  stloc.2
    IL_0163:  ldc.i8     0x1
    IL_016c:  conv.u
    IL_016d:  stloc.3
    IL_016e:  br.s       IL_0187

    IL_0170:  ldloc.3
    IL_0171:  call       void assembly::set_c(native uint)
    IL_0176:  ldloc.3
    IL_0177:  ldarg.0
    IL_0178:  add
    IL_0179:  stloc.3
    IL_017a:  ldloc.2
    IL_017b:  ldc.i8     0x1
    IL_0184:  conv.u
    IL_0185:  add
    IL_0186:  stloc.2
    IL_0187:  ldloc.2
    IL_0188:  ldloc.1
    IL_0189:  blt.un.s   IL_0170

    IL_018b:  ret
  } 

  .method public static void  f9(native uint finish) cil managed
  {
    
    .maxstack  4
    .locals init (native uint V_0,
             native uint V_1,
             native uint V_2)
    IL_0000:  ldarg.0
    IL_0001:  ldc.i8     0x1
    IL_000a:  conv.u
    IL_000b:  bge.un.s   IL_001a

    IL_000d:  ldc.i8     0x0
    IL_0016:  conv.u
    IL_0017:  nop
    IL_0018:  br.s       IL_003d

    IL_001a:  ldarg.0
    IL_001b:  ldc.i8     0x1
    IL_0024:  conv.u
    IL_0025:  sub
    IL_0026:  ldc.i8     0x2
    IL_002f:  conv.u
    IL_0030:  div.un
    IL_0031:  ldc.i8     0x1
    IL_003a:  conv.u
    IL_003b:  add.ovf.un
    IL_003c:  nop
    IL_003d:  stloc.0
    IL_003e:  ldc.i8     0x0
    IL_0047:  conv.u
    IL_0048:  stloc.1
    IL_0049:  ldc.i8     0x1
    IL_0052:  conv.u
    IL_0053:  stloc.2
    IL_0054:  br.s       IL_0076

    IL_0056:  ldloc.2
    IL_0057:  call       void assembly::set_c(native uint)
    IL_005c:  ldloc.2
    IL_005d:  ldc.i8     0x2
    IL_0066:  conv.u
    IL_0067:  add
    IL_0068:  stloc.2
    IL_0069:  ldloc.1
    IL_006a:  ldc.i8     0x1
    IL_0073:  conv.u
    IL_0074:  add
    IL_0075:  stloc.1
    IL_0076:  ldloc.1
    IL_0077:  ldloc.0
    IL_0078:  blt.un.s   IL_0056

    IL_007a:  ret
  } 

  .method public static void  f10(native uint start,
                                  native uint step,
                                  native uint finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 03 00 00 00 01 00 00 00 01 00 00 00 01 00 
                                                                                                                    00 00 00 00 ) 
    
    .maxstack  5
    .locals init (native uint V_0,
             native uint V_1,
             native uint V_2,
             native uint V_3)
    IL_0000:  ldarg.1
    IL_0001:  ldc.i8     0x0
    IL_000a:  conv.u
    IL_000b:  bne.un.s   IL_0019

    IL_000d:  ldarg.2
    IL_000e:  ldarg.1
    IL_000f:  ldarg.2
    IL_0010:  call       class [runtime]System.Collections.Generic.IEnumerable`1<native uint> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUIntPtr(native uint,
                                                                                                                                                                                   native uint,
                                                                                                                                                                                   native uint)
    IL_0015:  pop
    IL_0016:  nop
    IL_0017:  br.s       IL_001a

    IL_0019:  nop
    IL_001a:  ldarg.2
    IL_001b:  ldarg.2
    IL_001c:  bge.un.s   IL_002b

    IL_001e:  ldc.i8     0x0
    IL_0027:  conv.u
    IL_0028:  nop
    IL_0029:  br.s       IL_0031

    IL_002b:  ldarg.2
    IL_002c:  ldarg.2
    IL_002d:  sub
    IL_002e:  ldarg.1
    IL_002f:  div.un
    IL_0030:  nop
    IL_0031:  stloc.0
    IL_0032:  sizeof     [runtime]System.IntPtr
    IL_0038:  ldc.i4.4
    IL_0039:  bne.un.s   IL_004b

    IL_003b:  ldloc.0
    IL_003c:  ldc.i8     0xffffffff
    IL_0045:  conv.u
    IL_0046:  ceq
    IL_0048:  nop
    IL_0049:  br.s       IL_0059

    IL_004b:  ldloc.0
    IL_004c:  ldc.i8     0xffffffffffffffff
    IL_0055:  conv.u
    IL_0056:  ceq
    IL_0058:  nop
    IL_0059:  brfalse.s  IL_00a6

    IL_005b:  ldc.i8     0x0
    IL_0064:  conv.u
    IL_0065:  stloc.1
    IL_0066:  ldarg.2
    IL_0067:  stloc.2
    IL_0068:  ldloc.2
    IL_0069:  call       void assembly::set_c(native uint)
    IL_006e:  ldloc.2
    IL_006f:  ldarg.1
    IL_0070:  add
    IL_0071:  stloc.2
    IL_0072:  ldloc.1
    IL_0073:  ldc.i8     0x1
    IL_007c:  conv.u
    IL_007d:  add
    IL_007e:  stloc.1
    IL_007f:  br.s       IL_0098

    IL_0081:  ldloc.2
    IL_0082:  call       void assembly::set_c(native uint)
    IL_0087:  ldloc.2
    IL_0088:  ldarg.1
    IL_0089:  add
    IL_008a:  stloc.2
    IL_008b:  ldloc.1
    IL_008c:  ldc.i8     0x1
    IL_0095:  conv.u
    IL_0096:  add
    IL_0097:  stloc.1
    IL_0098:  ldloc.1
    IL_0099:  ldc.i8     0x0
    IL_00a2:  conv.u
    IL_00a3:  bgt.un.s   IL_0081

    IL_00a5:  ret

    IL_00a6:  ldarg.1
    IL_00a7:  ldc.i8     0x0
    IL_00b0:  conv.u
    IL_00b1:  bne.un.s   IL_00bf

    IL_00b3:  ldarg.2
    IL_00b4:  ldarg.1
    IL_00b5:  ldarg.2
    IL_00b6:  call       class [runtime]System.Collections.Generic.IEnumerable`1<native uint> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUIntPtr(native uint,
                                                                                                                                                                                   native uint,
                                                                                                                                                                                   native uint)
    IL_00bb:  pop
    IL_00bc:  nop
    IL_00bd:  br.s       IL_00c0

    IL_00bf:  nop
    IL_00c0:  ldarg.2
    IL_00c1:  ldarg.2
    IL_00c2:  bge.un.s   IL_00d1

    IL_00c4:  ldc.i8     0x0
    IL_00cd:  conv.u
    IL_00ce:  nop
    IL_00cf:  br.s       IL_00e2

    IL_00d1:  ldarg.2
    IL_00d2:  ldarg.2
    IL_00d3:  sub
    IL_00d4:  ldarg.1
    IL_00d5:  div.un
    IL_00d6:  ldc.i8     0x1
    IL_00df:  conv.u
    IL_00e0:  add.ovf.un
    IL_00e1:  nop
    IL_00e2:  stloc.1
    IL_00e3:  ldc.i8     0x0
    IL_00ec:  conv.u
    IL_00ed:  stloc.2
    IL_00ee:  ldarg.2
    IL_00ef:  stloc.3
    IL_00f0:  br.s       IL_0109

    IL_00f2:  ldloc.3
    IL_00f3:  call       void assembly::set_c(native uint)
    IL_00f8:  ldloc.3
    IL_00f9:  ldarg.1
    IL_00fa:  add
    IL_00fb:  stloc.3
    IL_00fc:  ldloc.2
    IL_00fd:  ldc.i8     0x1
    IL_0106:  conv.u
    IL_0107:  add
    IL_0108:  stloc.2
    IL_0109:  ldloc.2
    IL_010a:  ldloc.1
    IL_010b:  blt.un.s   IL_00f2

    IL_010d:  ret
  } 

  .method public static void  f11(native uint start,
                                  native uint finish) cil managed
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationArgumentCountsAttribute::.ctor(int32[]) = ( 01 00 02 00 00 00 01 00 00 00 01 00 00 00 00 00 ) 
    
    .maxstack  6
    .locals init (int32 V_0,
             native uint V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldarg.0
    IL_0003:  stloc.1
    IL_0004:  br.s       IL_001d

    IL_0006:  ldloc.1
    IL_0007:  call       void assembly::set_c(native uint)
    IL_000c:  ldloc.1
    IL_000d:  ldc.i8     0x0
    IL_0016:  conv.u
    IL_0017:  add
    IL_0018:  stloc.1
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.1
    IL_001b:  add
    IL_001c:  stloc.0
    IL_001d:  ldloc.0
    IL_001e:  ldarg.0
    IL_001f:  ldc.i8     0x0
    IL_0028:  conv.u
    IL_0029:  ldarg.1
    IL_002a:  call       class [runtime]System.Collections.Generic.IEnumerable`1<native uint> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUIntPtr(native uint,
                                                                                                                                                                                   native uint,
                                                                                                                                                                                   native uint)
    IL_002f:  pop
    IL_0030:  ldc.i4.m1
    IL_0031:  blt.un.s   IL_0006

    IL_0033:  ret
  } 

  .method public static void  f12() cil managed
  {
    
    .maxstack  6
    .locals init (int32 V_0,
             native uint V_1)
    IL_0000:  ldc.i4.0
    IL_0001:  stloc.0
    IL_0002:  ldc.i8     0x1
    IL_000b:  conv.u
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_0026

    IL_000f:  ldloc.1
    IL_0010:  call       void assembly::set_c(native uint)
    IL_0015:  ldloc.1
    IL_0016:  ldc.i8     0x0
    IL_001f:  conv.u
    IL_0020:  add
    IL_0021:  stloc.1
    IL_0022:  ldloc.0
    IL_0023:  ldc.i4.1
    IL_0024:  add
    IL_0025:  stloc.0
    IL_0026:  ldloc.0
    IL_0027:  ldc.i8     0x1
    IL_0030:  conv.u
    IL_0031:  ldc.i8     0x0
    IL_003a:  conv.u
    IL_003b:  ldc.i8     0xa
    IL_0044:  conv.u
    IL_0045:  call       class [runtime]System.Collections.Generic.IEnumerable`1<native uint> [FSharp.Core]Microsoft.FSharp.Core.Operators/OperatorIntrinsics::RangeUIntPtr(native uint,
                                                                                                                                                                                   native uint,
                                                                                                                                                                                   native uint)
    IL_004a:  pop
    IL_004b:  ldc.i4.m1
    IL_004c:  blt.un.s   IL_000f

    IL_004e:  ret
  } 

  .property native uint c()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .set void assembly::set_c(native uint)
    .get native uint assembly::get_c()
  } 
} 

.class private abstract auto ansi sealed '<StartupCode$assembly>'.$assembly
       extends [runtime]System.Object
{
  .field static assembly native uint c@1
  .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly int32 init@
  .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public static void  main@() cil managed
  {
    .entrypoint
    
    .maxstack  8
    IL_0000:  ldc.i8     0x0
    IL_0009:  conv.u
    IL_000a:  stsfld     native uint '<StartupCode$assembly>'.$assembly::c@1
    IL_000f:  ret
  } 

} 






