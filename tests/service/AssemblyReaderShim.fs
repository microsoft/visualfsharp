﻿#if INTERACTIVE
#r "../../artifacts/bin/fcs/net46/FSharp.Compiler.Service.dll" // note, build FSharp.Compiler.Service.Tests.fsproj to generate this, this DLL has a public API so can be used from F# Interactive
#r "../../artifacts/bin/fcs/net46/nunit.framework.dll"
#load "FsUnit.fs"
#load "Common.fs"
#else
module FSharp.Compiler.Service.Tests.AssemblyReaderShim
#endif

open FSharp.Compiler.Service.Tests.Common
open FsUnit
open FSharp.Compiler.AbstractIL.ILBinaryReader
open NUnit.Framework

[<Test>]
let ``Assembly reader shim gets requests`` () =
    let defaultReader = Shim.AssemblyReader
    let mutable gotRequest = false
    let reader =
        { new IAssemblyReader with
            member x.GetILModuleReader(path, opts) =
                gotRequest <- true
                defaultReader.GetILModuleReader(path, opts)
        }
    Shim.AssemblyReader <- reader
    let source = """
module M
let x = 123
"""

    let fileName, options = Common.mkTestFileAndOptions source [| |]
    Common.checker.ParseAndCheckFileInProject(fileName, 0, source, options) |> Async.RunSynchronously |> ignore
    gotRequest |> should be True
