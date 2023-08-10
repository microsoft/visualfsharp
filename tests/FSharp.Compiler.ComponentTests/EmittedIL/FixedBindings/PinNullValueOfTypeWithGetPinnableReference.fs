module FixedExpressions
open Microsoft.FSharp.NativeInterop
open System.Runtime.CompilerServices
open System

type RefField<'T>(_value) =
    let mutable _value = _value
    member this.Value = _value
    [<MethodImpl(MethodImplOptions.NoInlining)>]
    member this.GetPinnableReference () : byref<'T> = &_value

let pinIt (thing: RefField<int>) =
    use ptr = fixed thing
    if NativePtr.isNullPtr ptr then
        printfn "Success - null guard worked"
    else
        failwith "Test failed - null guard did not work"
    
[<EntryPoint>]
let main _ =
    pinIt Unchecked.defaultof<RefField<int>>
    0