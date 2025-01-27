namespace TypeChecks.ReuseTcResultsTests

open System.IO

open FSharp.Test
open FSharp.Test.Compiler

open Xunit

open TestFramework

[<Collection(nameof NotThreadSafeResourceCollection)>]
type Recompilation() =

    [<Theory>]
    [<InlineData "">]
    [<InlineData "()">]
    [<InlineData "42">]
    // [<InlineData "exit 0">]
    // [<InlineData "printfn \"Hello world!\"">]
    let ``Recompiles using restored TC info`` (code: string) =
        let tempPath = $"{getTemporaryFileName()}.fsx"
        
        File.WriteAllText(tempPath, code) 

        let cUnit =
            FsxFromPath tempPath
            |> withReuseTcResults
            |> withOptions [ "--compressmetadata-" ]

        let r1 =
            cUnit
            |> compileExisting
            |> shouldSucceed
            |> fun r -> ILChecker.generateIL r.Output.OutputPath.Value []

        let r2 =
            cUnit
            |> compileExisting
            |> shouldSucceed
            |> fun r -> ILChecker.generateIL r.Output.OutputPath.Value []

        Assert.Equal(r1, r2)
