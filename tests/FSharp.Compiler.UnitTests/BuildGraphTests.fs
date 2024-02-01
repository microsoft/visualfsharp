﻿// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.
namespace FSharp.Compiler.UnitTests

open System
open System.Threading
open System.Threading.Tasks
open System.Runtime.CompilerServices
open Xunit
open FSharp.Test
open FSharp.Test.Compiler
open FSharp.Compiler.BuildGraph
open FSharp.Compiler.DiagnosticsLogger
open Internal.Utilities.Library

module BuildGraphTests =
    
    [<MethodImpl(MethodImplOptions.NoInlining)>]
    let private createNode () =
        let o = obj ()
        GraphNode(async { 
            Assert.shouldBeTrue (o <> null)
            return 1 
        }), WeakReference(o)

    [<Fact>]
    let ``Intialization of graph node should not have a computed value``() =
        let node = GraphNode(async { return 1 })
        Assert.shouldBeTrue(node.TryPeekValue().IsNone)
        Assert.shouldBeFalse(node.HasValue)

    [<Fact>]
    let ``Two requests to get a value asynchronously should be successful``() =
        let resetEvent = new ManualResetEvent(false)
        let resetEventInAsync = new ManualResetEvent(false)

        let graphNode = 
            GraphNode(async { 
                resetEventInAsync.Set() |> ignore
                let! _ = Async.AwaitWaitHandle(resetEvent)
                return 1 
            })

        let task1 =
            async {
                let! _ = graphNode.GetOrComputeValue()
                ()
            } |> Async.StartAsTask_ForTesting

        let task2 =
            async {
                let! _ = graphNode.GetOrComputeValue()
                ()
            } |> Async.StartAsTask_ForTesting

        resetEventInAsync.WaitOne() |> ignore
        resetEvent.Set() |> ignore
        try
            task1.Wait(1000) |> ignore
            task2.Wait() |> ignore
        with
        | :? TimeoutException -> reraise()
        | _ -> ()

    [<Fact>]
    let ``Many requests to get a value asynchronously should only evaluate the computation once``() =
        let requests = 10
        let mutable computationCount = 0

        let graphNode = 
            GraphNode(async { 
                computationCount <- computationCount + 1
                return 1 
            })

        let work = Async.Parallel(Array.init requests (fun _ -> graphNode.GetOrComputeValue() ))

        Async.RunImmediate(work)
        |> ignore

        Assert.shouldBe 1 computationCount

    [<Fact>]
    let ``Many requests to get a value asynchronously should get the correct value``() =
        let requests = 10

        let graphNode = GraphNode(async { return 1 })

        let work = Async.Parallel(Array.init requests (fun _ -> graphNode.GetOrComputeValue() ))

        let result = Async.RunImmediate(work)

        Assert.shouldNotBeEmpty result
        Assert.shouldBe requests result.Length
        result
        |> Seq.iter (Assert.shouldBe 1)

    [<Fact>]
    let ``A request to get a value asynchronously should have its computation cleaned up by the GC``() =
        let graphNode, weak = createNode ()

        GC.Collect(2, GCCollectionMode.Forced, true)

        Assert.shouldBeTrue weak.IsAlive

        Async.RunImmediateWithoutCancellation(graphNode.GetOrComputeValue())
        |> ignore

        GC.Collect(2, GCCollectionMode.Forced, true)

        Assert.shouldBeFalse weak.IsAlive

    [<Fact>]
    let ``Many requests to get a value asynchronously should have its computation cleaned up by the GC``() =
        let requests = 10

        let weak = 

            let graphNode, weak = createNode ()

            GC.Collect(2, GCCollectionMode.Forced, true)
        
            Assert.shouldBeTrue weak.IsAlive

            Async.RunImmediate(Async.Parallel(Array.init requests (fun _ -> graphNode.GetOrComputeValue() )))
            |> ignore

            weak

        GC.Collect()

        //GC.Collect(2, GCCollectionMode.Forced, true)

        Assert.shouldBeFalse weak.IsAlive

    [<Fact>]
    let ``A request can cancel``() =
        let graphNode = 
            GraphNode(async { 
                return 1 
            })

        use cts = new CancellationTokenSource()

        let work(): Task =
            Async.StartAsTask(
            async {
                cts.Cancel()
                return! graphNode.GetOrComputeValue()
            }, cancellationToken = cts.Token)

        Assert.ThrowsAnyAsync<OperationCanceledException>(work).Wait()

    [<Fact>]
    let ``A request can cancel 2``() =
        let resetEvent = new ManualResetEvent(false)

        let graphNode = 
            GraphNode(async { 
                let! _ = Async.AwaitWaitHandle(resetEvent)
                failwith "Should have canceled" 
            })

        use cts = new CancellationTokenSource()

        let task =
            async {
                cts.Cancel()
                resetEvent.Set() |> ignore
            }
            |> Async.StartAsTask_ForTesting

        Assert.ThrowsAnyAsync<OperationCanceledException>(fun () ->
            Async.StartImmediateAsTask(graphNode.GetOrComputeValue(), cancellationToken = cts.Token)      
        ) |> ignore

        if task.Wait(1000) |> not then raise (TimeoutException())

    [<Fact>]
    let ``Many requests to get a value asynchronously will never evaluate the value more than once``() =
        let requests = 10
        let resetEvent = new ManualResetEvent(false)
        let mutable computationCountBeforeSleep = 0
        let mutable computationCount = 0

        let graphNode = 
            GraphNode(async { 
                computationCountBeforeSleep <- computationCountBeforeSleep + 1
                let! _ = Async.AwaitWaitHandle(resetEvent)
                computationCount <- computationCount + 1
                return 1 
            })

        use cts = new CancellationTokenSource()

        let work = 
            async { 
                let! _ = graphNode.GetOrComputeValue()
                ()
            }

        let tasks = ResizeArray()

        for i = 0 to requests - 1 do
            if i % 10 = 0 then
                Async.StartAsTask_ForTesting(work, ct = cts.Token)
                |> tasks.Add
            else
                Async.StartAsTask_ForTesting(work)
                |> tasks.Add

        cts.Cancel()
        resetEvent.Set() |> ignore
        Async.RunImmediateWithoutCancellation(work)
        |> ignore

        Assert.shouldBeTrue cts.IsCancellationRequested
        Assert.shouldBeTrue(computationCountBeforeSleep = 1)
        Assert.shouldBeTrue(computationCount = 1)

        tasks
        |> Seq.iter (fun x -> 
            try x.Wait(1000) |> ignore with | :? TimeoutException -> reraise() | _ -> ())

    [<Fact>]
    let ``GraphNode created from an already computed result will return it in tryPeekValue`` () =
        let graphNode = GraphNode.FromResult 1

        Assert.shouldBeTrue graphNode.HasValue
        Assert.shouldBe (ValueSome 1) (graphNode.TryPeekValue())

    
    [<Fact>]
    let internal ``NodeCode preserves DiagnosticsThreadStatics`` () =
        let random =
            let rng = Random()
            fun n -> rng.Next n
    
        let job phase _ = async {
            do! random 10 |> Async.Sleep 
            Assert.Equal(phase, DiagnosticsThreadStatics.BuildPhase)
        }
    
        let work (phase: BuildPhase) =
            async {
                use _ = new CompilationGlobalsScope(DiscardErrorsLogger, phase)
                let! _ = Seq.init 8 (job phase) |> Async.Parallel
                Assert.Equal(phase, DiagnosticsThreadStatics.BuildPhase)
            }
    
        let phases = [|
            BuildPhase.DefaultPhase
            BuildPhase.Compile
            BuildPhase.Parameter
            BuildPhase.Parse
            BuildPhase.TypeCheck
            BuildPhase.CodeGen
            BuildPhase.Optimize
            BuildPhase.IlxGen
            BuildPhase.IlGen
            BuildPhase.Output
            BuildPhase.Interactive
        |]
    
        let pickRandomPhase _ = phases[random phases.Length]
        Seq.init 100 pickRandomPhase
        |> Seq.map work
        |> Async.Parallel
        |> Async.RunSynchronously
