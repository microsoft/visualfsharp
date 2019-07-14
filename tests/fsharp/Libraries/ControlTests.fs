﻿namespace FSharp.Libraries.UnitTests

open System
open NUnit.Framework
open FSharp.Compiler.UnitTests

[<TestFixture>]
module ControlTests =
    // Regression for FSHARP1.0:5969
    // Async.StartChild: error when wait async is executed more than once
    [<Test>]
    let ExecuteAsyncMultipleTimes() =
        CompilerAssert.CompileExeAndRun
            """
module M

let a = async {
                let! a = Async.StartChild(
                            async {
                                do! Async.Sleep(500)
                                return 27
                            })
                let! result  = Async.Parallel [ a; a; a; a ]
                return result
            } |> Async.RunSynchronously

exit 0
            """


    // Regression for FSHARP1.0:5970
    // Async.StartChild: race in implementation of ResultCell in FSharp.Core
    [<Test>]
    let JoiningStartChild() =
        CompilerAssert.CompileExeAndRun
            """
module M

let Join (a1: Async<'a>) (a2: Async<'b>) = async {
      let! task1 = a1 |> Async.StartChild
      let! task2 = a2 |> Async.StartChild
      
      let! res1 = task1
      let! res2 = task2 
      return (res1,res2) }

let r =
    try 
                     Async.RunSynchronously (Join (async { do! Async.Sleep(30) 
                                                           failwith "fail"
                                                           return 3+3 }) 
                                                  (async { do! Async.Sleep(30) 
                                                           return 2 + 2 } ))
    with _ -> 
                     (0,0)     

exit 0

            """
    // Regression test for FSHARP1.0:6086
    // This is a bit of duplication because the same/similar test
    // can also be found under the FSHARP suite. Yet, I like to have
    // it here...
    
    // The interesting thing about this test is that is used to throw
    // an exception when executed on 64bit (FSharp.Core 2.0)
    [<Test>]
    let MailboxAsyncNoStackOverflow() =
        CompilerAssert.CompileExeAndRun
            """
open Microsoft.FSharp.Control

type Color = Blue | Red | Yellow
let complement = function
    | (Red, Yellow) | (Yellow, Red) -> Blue
    | (Red, Blue) | (Blue, Red) -> Yellow
    | (Yellow, Blue) | (Blue, Yellow) -> Red
    | (Blue, Blue) -> Blue
    | (Red, Red) -> Red
    | (Yellow, Yellow) -> Yellow

type Message =  Color * AsyncReplyChannel<Color option>

let chameleon (meetingPlace : MailboxProcessor<Message>) initial = 
    let rec loop c meets = async  {
            let replyMessage = meetingPlace.PostAndReply(fun reply -> c, reply)
            match replyMessage with     
            | Some(newColor) -> return! loop newColor (meets + 1)
            | None -> return meets
        }
    loop initial 0
    
let meetingPlace chams n = MailboxProcessor.Start(fun (processor : MailboxProcessor<Message>)->
    let rec fadingLoop total = 
        async   {
            if total <> 0 then
                let! (_, reply) = processor.Receive()
                reply.Reply None
                return! fadingLoop (total - 1)
            else
                printfn "Done"
        }
    let rec mainLoop curr = 
        async   {
            if (curr > 0) then
                let! (color1, reply1) = processor.Receive()
                let! (color2, reply2) = processor.Receive()
                let newColor = complement (color1, color2)
                reply1.Reply <| Some(newColor)
                reply2.Reply <| Some(newColor)                
                return! mainLoop (curr - 1)
            else
                return! fadingLoop chams
        }
    mainLoop n
    ) 

open System
open System.Diagnostics

[<EntryPoint>]
let main(args : string[]) =     
    printfn "CommandLine : %s" (String.concat ", " args)
    let meetings = if args.Length > 0 then Int32.Parse(args.[0]) else 100000
    
    let colors = [Blue; Red; Yellow; Blue]    
    let mp = meetingPlace (colors.Length) meetings
    let watch = Stopwatch.StartNew()
    let meets = 
        colors 
            |> List.map (chameleon mp) 
            |> Async.Parallel 
            |> Async.RunSynchronously 
    watch.Stop()
    for meet in meets do
        printfn "%d" meet
    printfn "Total: %d in %O"  (Seq.sum meets) (watch.Elapsed)
    0
            """

    // Regression for FSHARP1.0:5971
    // Async.StartChild: ObjectDisposedException
    [<Test>]
    let StartChildNoObjectDisposedException() =
        CompilerAssert.CompileExeAndRun
            """
module M

let b = async {return 5} |> Async.StartChild
printfn "%A" (b |> Async.RunSynchronously |> Async.RunSynchronously)

exit 0
            """


    [<Test>]
    let StartChildTestTrampolineHijackLimit() =
        CompilerAssert.CompileExeAndRun
            """
module M

let r =
    async {
        let! a = Async.StartChild(
                    async { 
                        do! Async.Sleep(500)
                        return 5 
                    }
                  )
        let! _ = a
        for __ in 1..10000 do // 10000 > bindHijackLimit
            ()
    } |> Async.RunSynchronously

exit 0
            """
