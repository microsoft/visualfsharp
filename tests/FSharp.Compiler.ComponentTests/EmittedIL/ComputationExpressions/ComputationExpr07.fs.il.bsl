




.assembly extern runtime { }
.assembly extern FSharp.Core { }
.assembly extern ComputationExprLibrary
{
  .ver 0:0:0:0
}
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





.class public abstract auto ansi sealed Program
       extends [runtime]System.Object
{
  .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 07 00 00 00 00 00 ) 
  .class auto ansi serializable sealed nested assembly beforefieldinit 'res7@1-1'
         extends class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,int32>
  {
    .field static assembly initonly class Program/'res7@1-1' @_instance
    .method assembly specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,int32>::.ctor()
      IL_0006:  ret
    } 

    .method public strict virtual instance int32 
            Invoke(int32 i) cil managed
    {
      
      .maxstack  8
      IL_0000:  ldc.i4.0
      IL_0001:  ldarg.1
      IL_0002:  add
      IL_0003:  ret
    } 

    .method private specialname rtspecialname static 
            void  .cctor() cil managed
    {
      
      .maxstack  10
      IL_0000:  newobj     instance void Program/'res7@1-1'::.ctor()
      IL_0005:  stsfld     class Program/'res7@1-1' Program/'res7@1-1'::@_instance
      IL_000a:  ret
    } 

  } 

  .class auto ansi serializable sealed nested assembly beforefieldinit 'res7@10-2'
         extends class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [ComputationExprLibrary]Library.Eventually`1<class [FSharp.Core]Microsoft.FSharp.Core.Unit>>
  {
    .field public class [ComputationExprLibrary]Library.EventuallyBuilder builder@
    .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
    .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> x
    .method assembly specialname rtspecialname 
            instance void  .ctor(class [ComputationExprLibrary]Library.EventuallyBuilder builder@,
                                 class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> x) cil managed
    {
      .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,class [ComputationExprLibrary]Library.Eventually`1<class [FSharp.Core]Microsoft.FSharp.Core.Unit>>::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/'res7@10-2'::builder@
      IL_000d:  ldarg.0
      IL_000e:  ldarg.2
      IL_000f:  stfld      class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> Program/'res7@10-2'::x
      IL_0014:  ret
    } 

    .method public strict virtual instance class [ComputationExprLibrary]Library.Eventually`1<class [FSharp.Core]Microsoft.FSharp.Core.Unit> 
            Invoke(int32 _arg1) cil managed
    {
      
      .maxstack  7
      .locals init (int32 V_0)
      IL_0000:  ldarg.1
      IL_0001:  stloc.0
      IL_0002:  ldarg.0
      IL_0003:  ldfld      class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> Program/'res7@10-2'::x
      IL_0008:  ldarg.0
      IL_0009:  ldfld      class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> Program/'res7@10-2'::x
      IL_000e:  call       instance !0 class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32>::get_contents()
      IL_0013:  ldloc.0
      IL_0014:  sub
      IL_0015:  call       instance void class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32>::set_contents(!0)
      IL_001a:  ldarg.0
      IL_001b:  ldfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/'res7@10-2'::builder@
      IL_0020:  tail.
      IL_0022:  callvirt   instance class [ComputationExprLibrary]Library.Eventually`1<class [FSharp.Core]Microsoft.FSharp.Core.Unit> [ComputationExprLibrary]Library.EventuallyBuilder::Zero()
      IL_0027:  ret
    } 

  } 

  .class auto ansi serializable sealed nested assembly beforefieldinit 'res7@12-3'
         extends class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [ComputationExprLibrary]Library.Eventually`1<int32>>
  {
    .field public class [ComputationExprLibrary]Library.EventuallyBuilder builder@
    .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
    .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> x
    .method assembly specialname rtspecialname 
            instance void  .ctor(class [ComputationExprLibrary]Library.EventuallyBuilder builder@,
                                 class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> x) cil managed
    {
      .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [ComputationExprLibrary]Library.Eventually`1<int32>>::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/'res7@12-3'::builder@
      IL_000d:  ldarg.0
      IL_000e:  ldarg.2
      IL_000f:  stfld      class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> Program/'res7@12-3'::x
      IL_0014:  ret
    } 

    .method public strict virtual instance class [ComputationExprLibrary]Library.Eventually`1<int32> 
            Invoke(class [FSharp.Core]Microsoft.FSharp.Core.Unit unitVar) cil managed
    {
      
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/'res7@12-3'::builder@
      IL_0006:  ldarg.0
      IL_0007:  ldfld      class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> Program/'res7@12-3'::x
      IL_000c:  call       instance !0 class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32>::get_contents()
      IL_0011:  tail.
      IL_0013:  callvirt   instance class [ComputationExprLibrary]Library.Eventually`1<!!0> [ComputationExprLibrary]Library.EventuallyBuilder::Return<int32>(!!0)
      IL_0018:  ret
    } 

  } 

  .class auto ansi serializable sealed nested assembly beforefieldinit res7@9
         extends class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [ComputationExprLibrary]Library.Eventually`1<int32>>
  {
    .field public class [ComputationExprLibrary]Library.EventuallyBuilder builder@
    .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
    .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
    .method assembly specialname rtspecialname 
            instance void  .ctor(class [ComputationExprLibrary]Library.EventuallyBuilder builder@) cil managed
    {
      .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
      .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
      
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [ComputationExprLibrary]Library.Eventually`1<int32>>::.ctor()
      IL_0006:  ldarg.0
      IL_0007:  ldarg.1
      IL_0008:  stfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/res7@9::builder@
      IL_000d:  ret
    } 

    .method public strict virtual instance class [ComputationExprLibrary]Library.Eventually`1<int32> 
            Invoke(class [FSharp.Core]Microsoft.FSharp.Core.Unit unitVar) cil managed
    {
      
      .maxstack  9
      .locals init (class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32> V_0)
      IL_0000:  ldc.i4.1
      IL_0001:  newobj     instance void class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32>::.ctor(!0)
      IL_0006:  stloc.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/res7@9::builder@
      IL_000d:  ldarg.0
      IL_000e:  ldfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/res7@9::builder@
      IL_0013:  ldc.i4.3
      IL_0014:  ldc.i4.0
      IL_0015:  bge.s      IL_001f

      IL_0017:  call       class [FSharp.Core]Microsoft.FSharp.Collections.FSharpList`1<!0> class [FSharp.Core]Microsoft.FSharp.Collections.FSharpList`1<int32>::get_Empty()
      IL_001c:  nop
      IL_001d:  br.s       IL_002f

      IL_001f:  ldc.i4.3
      IL_0020:  ldc.i4.0
      IL_0021:  sub
      IL_0022:  ldc.i4.1
      IL_0023:  add
      IL_0024:  ldsfld     class Program/'res7@1-1' Program/'res7@1-1'::@_instance
      IL_0029:  call       class [FSharp.Core]Microsoft.FSharp.Collections.FSharpList`1<!!0> [FSharp.Core]Microsoft.FSharp.Collections.ListModule::Initialize<int32>(int32,
                                                                                                                                                                     class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<int32,!!0>)
      IL_002e:  nop
      IL_002f:  ldarg.0
      IL_0030:  ldfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/res7@9::builder@
      IL_0035:  ldloc.0
      IL_0036:  newobj     instance void Program/'res7@10-2'::.ctor(class [ComputationExprLibrary]Library.EventuallyBuilder,
                                                                    class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32>)
      IL_003b:  callvirt   instance class [ComputationExprLibrary]Library.Eventually`1<class [FSharp.Core]Microsoft.FSharp.Core.Unit> [ComputationExprLibrary]Library.EventuallyBuilder::For<int32>(class [runtime]System.Collections.Generic.IEnumerable`1<!!0>,
                                                                                                                                                                                                    class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<!!0,class [ComputationExprLibrary]Library.Eventually`1<class [FSharp.Core]Microsoft.FSharp.Core.Unit>>)
      IL_0040:  ldarg.0
      IL_0041:  ldfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/res7@9::builder@
      IL_0046:  ldarg.0
      IL_0047:  ldfld      class [ComputationExprLibrary]Library.EventuallyBuilder Program/res7@9::builder@
      IL_004c:  ldloc.0
      IL_004d:  newobj     instance void Program/'res7@12-3'::.ctor(class [ComputationExprLibrary]Library.EventuallyBuilder,
                                                                    class [FSharp.Core]Microsoft.FSharp.Core.FSharpRef`1<int32>)
      IL_0052:  callvirt   instance class [ComputationExprLibrary]Library.Eventually`1<!!0> [ComputationExprLibrary]Library.EventuallyBuilder::Delay<int32>(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [ComputationExprLibrary]Library.Eventually`1<!!0>>)
      IL_0057:  tail.
      IL_0059:  callvirt   instance class [ComputationExprLibrary]Library.Eventually`1<!!0> [ComputationExprLibrary]Library.EventuallyBuilder::Combine<int32>(class [ComputationExprLibrary]Library.Eventually`1<class [FSharp.Core]Microsoft.FSharp.Core.Unit>,
                                                                                                                                                              class [ComputationExprLibrary]Library.Eventually`1<!!0>)
      IL_005e:  ret
    } 

  } 

  .method public specialname static class [ComputationExprLibrary]Library.Eventually`1<int32> 
          get_res7() cil managed
  {
    
    .maxstack  8
    IL_0000:  ldsfld     class [ComputationExprLibrary]Library.Eventually`1<int32> '<StartupCode$assembly>'.$Program::res7@7
    IL_0005:  ret
  } 

  .property class [ComputationExprLibrary]Library.Eventually`1<int32>
          res7()
  {
    .custom instance void [FSharp.Core]Microsoft.FSharp.Core.CompilationMappingAttribute::.ctor(valuetype [FSharp.Core]Microsoft.FSharp.Core.SourceConstructFlags) = ( 01 00 09 00 00 00 00 00 ) 
    .get class [ComputationExprLibrary]Library.Eventually`1<int32> Program::get_res7()
  } 
} 

.class private abstract auto ansi sealed '<StartupCode$assembly>'.$Program
       extends [runtime]System.Object
{
  .field static assembly class [ComputationExprLibrary]Library.Eventually`1<int32> res7@7
  .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .field static assembly int32 init@
  .custom instance void [runtime]System.Diagnostics.DebuggerBrowsableAttribute::.ctor(valuetype [runtime]System.Diagnostics.DebuggerBrowsableState) = ( 01 00 00 00 00 00 00 00 ) 
  .custom instance void [runtime]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [runtime]System.Diagnostics.DebuggerNonUserCodeAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public static void  main@() cil managed
  {
    .entrypoint
    
    .maxstack  4
    .locals init (class [ComputationExprLibrary]Library.Eventually`1<int32> V_0,
             class [ComputationExprLibrary]Library.EventuallyBuilder V_1,
             class [ComputationExprLibrary]Library.Eventually`1<int32> V_2,
             int32 V_3,
             int32 V_4)
    IL_0000:  call       class [ComputationExprLibrary]Library.EventuallyBuilder [ComputationExprLibrary]Library.TheEventuallyBuilder::get_eventually()
    IL_0005:  stloc.1
    IL_0006:  ldloc.1
    IL_0007:  ldloc.1
    IL_0008:  newobj     instance void Program/res7@9::.ctor(class [ComputationExprLibrary]Library.EventuallyBuilder)
    IL_000d:  callvirt   instance class [ComputationExprLibrary]Library.Eventually`1<!!0> [ComputationExprLibrary]Library.EventuallyBuilder::Delay<int32>(class [FSharp.Core]Microsoft.FSharp.Core.FSharpFunc`2<class [FSharp.Core]Microsoft.FSharp.Core.Unit,class [ComputationExprLibrary]Library.Eventually`1<!!0>>)
    IL_0012:  dup
    IL_0013:  stsfld     class [ComputationExprLibrary]Library.Eventually`1<int32> '<StartupCode$assembly>'.$Program::res7@7
    IL_0018:  stloc.0
    IL_0019:  call       class [ComputationExprLibrary]Library.Eventually`1<int32> Program::get_res7()
    IL_001e:  stloc.2
    IL_001f:  ldloc.2
    IL_0020:  call       !!0 [ComputationExprLibrary]Library.EventuallyModule::force<int32>(class [ComputationExprLibrary]Library.Eventually`1<!!0>)
    IL_0025:  stloc.3
    IL_0026:  ldloc.3
    IL_0027:  stloc.s    V_4
    IL_0029:  ret
  } 

} 










