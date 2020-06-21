// Copyright (c) Microsoft Corporation.  All Rights Reserved.  See License.txt in the project root for license information.

// Various tests for the:
// Microsoft.FSharp.Core.Operators module

namespace FSharp.Core.UnitTests.Operators

open System
open FSharp.Core.UnitTests.LibraryTestFx
open NUnit.Framework
open Microsoft.FSharp.Core.Operators.Checked

[<TestFixture>]
type OperatorsModule1() =

    [<Test>]
    member _.Checkedbyte() =
        // int type
        let intByte = Operators.Checked.byte 100
        Assert.AreEqual((byte)100, intByte)
        
        // char type
        let charByte = Operators.Checked.byte '0'
        Assert.AreEqual((byte)48, charByte)
        
        // boundary value
        let boundByte = Operators.Checked.byte 255.0
        Assert.AreEqual((byte)255, boundByte)
        
        // overflow exception
        try
            let overflowByte = Operators.Checked.byte 256.0
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.Checkedchar() =

        // number
        let numberChar = Operators.Checked.char 48
        Assert.AreEqual('0', numberChar)
        
        // letter
        let letterChar = Operators.Checked.char 65
        Assert.AreEqual('A', letterChar)
        
        // boundary value
        let boundchar = Operators.Checked.char 126
        Assert.AreEqual('~', boundchar)
        
        // overflow exception
        try
            let overflowchar = Operators.Checked.char (System.Int64.MaxValue+(int64)2)
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")
        
    [<Test>]
    member _.CheckedInt() =

        // char
        let charInt = Operators.Checked.int '0'
        Assert.AreEqual(48, charInt)
        
        // float
        let floatInt = Operators.Checked.int 10.0
        Assert.AreEqual(10, floatInt)

        // boundary value
        let boundInt = Operators.Checked.int 32767.0
        Assert.AreEqual((int)32767, boundInt)
        
        // overflow exception
        try
            let overflowint = Operators.Checked.int 2147483648.0
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.CheckedInt16() =

        // char
        let charInt16 = Operators.Checked.int16 '0'
        Assert.AreEqual((int16)48, charInt16)
        
        // float
        let floatInt16 = Operators.Checked.int16 10.0
        Assert.AreEqual((int16)10, floatInt16)
        
        // boundary value
        let boundInt16 = Operators.Checked.int16 32767.0
        Assert.AreEqual((int16)32767, boundInt16)
        
        // overflow exception
        try
            let overflowint16 = Operators.Checked.int16 32768.0
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.CheckedInt32() =

        // char
        let charInt32 = Operators.Checked.int32 '0'
        Assert.AreEqual((int32)48, charInt32)
        
        // float
        let floatInt32 = Operators.Checked.int32 10.0
        Assert.AreEqual((int32)10, floatInt32)
        
        // boundary value
        let boundInt32 = Operators.Checked.int32 2147483647.0
        Assert.AreEqual((int32)2147483647, boundInt32)
        
        // overflow exception
        try
            let overflowint32 = Operators.Checked.int32 2147483648.0
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.CheckedInt64() =

        // char
        let charInt64 = Operators.Checked.int64 '0'
        Assert.AreEqual((int64)48, charInt64)
        
        // float
        let floatInt64 = Operators.Checked.int64 10.0
        Assert.AreEqual((int64)10, floatInt64)
        
        // boundary value
        let boundInt64 = Operators.Checked.int64 9223372036854775807I
        let a  = 9223372036854775807L
        Assert.AreEqual(9223372036854775807L, boundInt64)
        
        // overflow exception
        try
            let overflowint64 = Operators.Checked.int64 (System.Double.MaxValue+2.0)
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.CheckedNativeint() =

        // char
        let charnativeint = Operators.Checked.nativeint '0'
        Assert.AreEqual((nativeint)48, charnativeint)
        
        // float
        let floatnativeint = Operators.Checked.nativeint 10.0
        Assert.AreEqual((nativeint)10, floatnativeint)
        
        // boundary value
        let boundnativeint = Operators.Checked.nativeint 32767.0
        Assert.AreEqual((nativeint)32767, boundnativeint)
        
        // overflow exception
        try
            let overflownativeint = Operators.Checked.nativeint 2147483648.0
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.Checkedsbyte() =

        // char
        let charsbyte = Operators.Checked.sbyte '0'
        Assert.AreEqual((sbyte)48, charsbyte)
        
        // float
        let floatsbyte = Operators.Checked.sbyte -10.0
        Assert.AreEqual((sbyte)(-10), floatsbyte)
        
        // boundary value
        let boundsbyte = Operators.Checked.sbyte -127.0
        Assert.AreEqual((sbyte)(-127), boundsbyte)
        
        // overflow exception
        try
            let overflowsbyte = Operators.Checked.sbyte -256.0
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.Checkeduint16() =

        // char
        let charuint16 = Operators.Checked.uint16 '0'
        Assert.AreEqual((uint16)48, charuint16)
        
        // float
        let floatuint16 = Operators.Checked.uint16 10.0
        Assert.AreEqual((uint16)(10), floatuint16)
        
        // boundary value
        let bounduint16 = Operators.Checked.uint16 65535.0
        Assert.AreEqual((uint16)(65535), bounduint16)
        
        // overflow exception
        try
            let overflowuint16 = Operators.Checked.uint16 65536.0
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.Checkeduint32() =

        // char
        let charuint32 = Operators.Checked.uint32 '0'
        Assert.AreEqual((uint32)48, charuint32)
        
        // float
        let floatuint32 = Operators.Checked.uint32 10.0
        Assert.AreEqual((uint32)(10), floatuint32)
        
        // boundary value
        let bounduint32 = Operators.Checked.uint32 429496729.0
        Assert.AreEqual((uint32)(429496729), bounduint32)

        // overflow exception
        try
            let overflowuint32 = Operators.Checked.uint32 UInt32.MaxValue + 1u
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.Checkeduint64() =

        // char
        let charuint64 = Operators.Checked.uint64 '0'
        Assert.AreEqual((uint64)48, charuint64)
        
        // float
        let floatuint64 = Operators.Checked.uint64 10.0
        Assert.AreEqual((uint64)(10), floatuint64)
        
        // boundary value
        let bounduint64 = Operators.Checked.uint64 429496729.0
        Assert.AreEqual((uint64)(429496729), bounduint64)
        
        // overflow exception
        try
            let overflowuint64 = Operators.Checked.uint64 System.UInt64.MaxValue+1UL
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.Checkedunativeint() =

        // char
        let charunativeint = Operators.Checked.unativeint '0'
        Assert.AreEqual((unativeint)48, charunativeint)
        
        // float
        let floatunativeint = Operators.Checked.unativeint 10.0
        Assert.AreEqual((unativeint)10, floatunativeint)
        
        // boundary value
        let boundunativeint = Operators.Checked.unativeint 65353.0
        Assert.AreEqual((unativeint)65353, boundunativeint)
        
        // overflow exception
        try
            let overflowuint64 = Operators.Checked.uint64 System.UInt64.MaxValue+1UL
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")

    [<Test>]
    member _.KeyValue() =

        let funcKeyValue x =
            match x with
            | Operators.KeyValue(a) -> a
        
        // string int
        let stringint = funcKeyValue ( new System.Collections.Generic.KeyValuePair<string,int>("string",1))
        Assert.AreEqual(("string",1), stringint)
        
        // float char
        let floatchar = funcKeyValue ( new System.Collections.Generic.KeyValuePair<float,char>(1.0,'a'))
        Assert.AreEqual((1.0,'a'), floatchar)
        
        // null
        let nullresult = funcKeyValue ( new System.Collections.Generic.KeyValuePair<string,char>(null,' '))
        let (nullstring:string,blankchar:char) = nullresult
        
        CheckThrowsNullRefException(fun () -> nullstring.ToString() |> ignore)

    [<Test>]
    member _.OptimizedRangesGetArraySlice() =

        let param1 = Some(1)
        let param2 = Some(2)
            
        // int
        let intslice = Operators.OperatorIntrinsics.GetArraySlice [|1;2;3;4;5;6|] param1 param2
        Assert.AreEqual([|2;3|], intslice)
        
        // string
        let stringslice = Operators.OperatorIntrinsics.GetArraySlice [|"1";"2";"3"|] param1 param2
        Assert.AreEqual([|"2";"3"|], stringslice)
        
        // null
        let stringslice = Operators.OperatorIntrinsics.GetArraySlice [|null;null;null|] param1 param2
        Assert.AreEqual([|null;null|], stringslice)

    [<Test>]
    member _.OptimizedRangesGetArraySlice2D() =

        let param1D1 = Some(0)
        let param1D2 = Some(1)
        let param2D1 = Some(0)
        let param2D2 = Some(1)
            
        // int
        let intArray2D = Array2D.init 2 3 (fun i j -> i*100+j)
        let intslice = Operators.OperatorIntrinsics.GetArraySlice2D intArray2D param1D1 param1D2 param2D1 param2D2
        
        Assert.AreEqual(101, intslice.[1,1])
         
        // string
        let stringArray2D = Array2D.init 2 3 (fun i j -> (i*100+j).ToString())
        let stringslice = Operators.OperatorIntrinsics.GetArraySlice2D stringArray2D param1D1 param1D2 param2D1 param2D2
        Assert.AreEqual((101).ToString(), stringslice.[1,1])
        
        // null
        let nullArray2D = Array2D.init 2 3 (fun i j -> null)
        let nullslice = Operators.OperatorIntrinsics.GetArraySlice2D nullArray2D param1D1 param1D2 param2D1 param2D2
        Assert.AreEqual(null, nullslice.[1,1])

    [<Test>]
    member _.OptimizedRangesGetStringSlice() =
        let param1 = Some(4)
        let param2 = Some(6)
            
        // string
        let stringslice = Operators.OperatorIntrinsics.GetStringSlice "abcdefg" param1 param2
        Assert.AreEqual("efg", stringslice)
        
        // null
        CheckThrowsNullRefException(fun () -> Operators.OperatorIntrinsics.GetStringSlice null param1 param2 |> ignore)

    [<Test>]
    member _.OptimizedRangesSetArraySlice() =
        let param1 = Some(1)
        let param2 = Some(2)
            
        // int
        let intArray1 = [|1;2;3|]
        let intArray2 = [|4;5;6|]
        Operators.OperatorIntrinsics.SetArraySlice intArray1 param1 param2 intArray2
        Assert.AreEqual([|1;4;5|], intArray1)
        
        // string
        let stringArray1 = [|"1";"2";"3"|]
        let stringArray2 = [|"4";"5";"6"|]
        Operators.OperatorIntrinsics.SetArraySlice stringArray1 param1 param2 stringArray2
        Assert.AreEqual([|"1";"4";"5"|], stringArray1)
        
        // null
        let nullArray1 = [|null;null;null|]
        let nullArray2 = [|null;null;null|]
        Operators.OperatorIntrinsics.SetArraySlice nullArray1  param1 param2 nullArray2
        CheckThrowsNullRefException(fun () -> nullArray1.[0].ToString() |> ignore)

    [<Test>]
    member _.OptimizedRangesSetArraySlice2D() =
        let param1D1 = Some(0)
        let param1D2 = Some(1)
        let param2D1 = Some(0)
        let param2D2 = Some(1)
            
        // int
        let intArray1 = Array2D.init 2 3 (fun i j -> i*10+j)
        let intArray2 = Array2D.init 2 3 (fun i j -> i*100+j)
        Operators.OperatorIntrinsics.SetArraySlice2D intArray1 param1D1 param1D2 param2D1 param2D2 intArray2
        Assert.AreEqual(101, intArray1.[1,1])
        
        // string
        let stringArray2D1 = Array2D.init 2 3 (fun i j -> (i*10+j).ToString())
        let stringArray2D2 = Array2D.init 2 3 (fun i j -> (i*100+j).ToString())
        Operators.OperatorIntrinsics.SetArraySlice2D stringArray2D1 param1D1 param1D2 param2D1 param2D2 stringArray2D2
        Assert.AreEqual((101).ToString(), stringArray2D1.[1,1])
        
        // null
        let nullArray2D1 = Array2D.init 2 3 (fun i j -> null)
        let nullArray2D2 = Array2D.init 2 3 (fun i j -> null)
        Operators.OperatorIntrinsics.SetArraySlice2D nullArray2D1 param1D1 param1D2 param2D1 param2D2 nullArray2D2
        CheckThrowsNullRefException(fun () -> nullArray2D1.[0,0].ToString()  |> ignore)

    [<Test>]
    member _.OptimizedRangesSetArraySlice3D() =
        let intArray1 = Array3D.init 2 3 4 (fun i j k -> i*10+j)
        let intArray2 = Array3D.init 2 3 4 (fun i j k -> i*100+j)
        Operators.OperatorIntrinsics.SetArraySlice3D intArray1 (Some 0) (Some 1) (Some 0) (Some 1) (Some 0) (Some 1) intArray2
        Assert.AreEqual(101, intArray1.[1,1,1])

    [<Test>]
    member _.OptimizedRangesSetArraySlice4D() =
        let intArray1 = Array4D.init 2 3 4 5 (fun i j k l -> i*10+j)
        let intArray2 = Array4D.init 2 3 4 5 (fun i j k l -> i*100+j)
        Operators.OperatorIntrinsics.SetArraySlice4D intArray1 (Some 0) (Some 1) (Some 0) (Some 1) (Some 0) (Some 1) (Some 0) (Some 1) intArray2
        Assert.AreEqual(101, intArray1.[1,1,1,1])

    [<Test>]
    member _.Uncheckeddefaultof () =
        
        // int
        let intdefault = Operators.Unchecked.defaultof<int>
        Assert.AreEqual(0, intdefault)
      
        // string
        let stringdefault = Operators.Unchecked.defaultof<string>
        CheckThrowsNullRefException(fun () -> stringdefault.ToString() |> ignore)
        
        // null
        let structdefault = Operators.Unchecked.defaultof<DateTime>
        Assert.AreEqual(1,  structdefault.Day)

    [<Test>]
    member _.abs () =
        
        // int
        let intabs = Operators.abs (-7)
        Assert.AreEqual(7, intabs)
      
        // float
        let floatabs = Operators.abs (-100.0)
        Assert.AreEqual(100.0, floatabs)
        
        // decimal
        let decimalabs = Operators.abs (-1000M)
        Assert.AreEqual(1000M, decimalabs)

    [<Test>]
    member _.acos () =
        
        // min value
        let minacos = Operators.acos (0.0)
        Assert.AreEqual(1.5707963267948966, minacos)
      
        // normal value
        let normalacos = Operators.acos (0.3)
        Assert.AreEqual(1.2661036727794992, normalacos)
      
        // max value
        let maxacos = Operators.acos (1.0)
        Assert.AreEqual(0.0, maxacos)

    [<Test>]
    member _.asin () =
        
        // min value
        let minasin = Operators.asin (0.0)
        Assert.AreEqual(0.0, minasin)
      
        // normal value
        let normalasin = Operators.asin (0.5)
        Assert.AreEqual(0.52359877559829893, normalasin)
      
        // max value
        let maxasin = Operators.asin (1.0)
        Assert.AreEqual(1.5707963267948966, maxasin)

    [<Test>]
    member _.atan () =
        
        // min value
        let minatan = Operators.atan (0.0)
        Assert.AreEqual(0.0, minatan)
      
        // normal value
        let normalatan = Operators.atan (1.0)
        Assert.AreEqual(0.78539816339744828, normalatan)
      
        // biggish  value
        let maxatan = Operators.atan (infinity)
        Assert.AreEqual(1.5707963267948966, maxatan)

    [<Test>]
    member _.atan2 () =
        
        // min value
        let minatan2 = Operators.atan2 (0.0) (1.0)
        Assert.AreEqual(0.0, minatan2)
      
        // normal value
        let normalatan2 = Operators.atan2 (1.0) (1.0)
        Assert.AreEqual(0.78539816339744828, normalatan2)
      
        // biggish  value
        let maxatan2 = Operators.atan2 (1.0) (0.0)
        Assert.AreEqual(1.5707963267948966, maxatan2)

    [<Test>]
    member _.box () =
        
        // int value
        let intbox = Operators.box 1
        Assert.AreEqual(1, intbox)
      
        // string value
        let stringlbox = Operators.box "string"
        Assert.AreEqual("string", stringlbox)
      
        // null  value
        let nullbox = Operators.box null
        CheckThrowsNullRefException(fun () -> nullbox.ToString()  |> ignore)

    [<Test>]
    member _.byte() =
        // int type
        let intByte = Operators.byte 100
        Assert.AreEqual(100uy, intByte)
        
        // char type
        let charByte = Operators.byte '0'
        Assert.AreEqual(48uy, charByte)
        
        // boundary value
        let boundByte = Operators.byte 255.0
        Assert.AreEqual(255uy, boundByte)
        
        // overflow exception
        try
            let overflowbyte = Operators.byte (System.Int64.MaxValue*(int64)2)
            Assert.Fail("Expectt overflow exception but not.")
        with
            | :? System.OverflowException -> ()
            | _ -> Assert.Fail("Expectt overflow exception but not.")
        
    [<Test>]
    member _.ceil() =
        // min value
        let minceil = Operators.ceil 0.1
        Assert.AreEqual(1.0, minceil)
        
        // normal value
        let normalceil = Operators.ceil 100.0
        Assert.AreEqual(100.0, normalceil)
        
        // max value
        let maxceil = Operators.ceil 1.7E+308
        Assert.AreEqual(1.7E+308, maxceil)
        
    [<Test>]
    member _.char() =
        // int type
        let intchar = Operators.char 48
        Assert.AreEqual('0', intchar)
        
        // string type
        let stringchar = Operators.char " "
        Assert.AreEqual(' ', stringchar)
       
    [<Test>]
    member _.compare() =
        // int type
        let intcompare = Operators.compare 100 101
        Assert.AreEqual(-1, intcompare)
        
        // char type
        let charcompare = Operators.compare '0' '1'
        Assert.AreEqual(-1, charcompare)
        
        // null value
        let boundcompare = Operators.compare null null
        Assert.AreEqual(0, boundcompare)

    [<Test>]
    member _.cos () =
        
        // min value
        let mincos = Operators.cos (0.0)
        Assert.AreEqual(1.0, mincos)
      
        // normal value
        let normalcos = Operators.cos (1.0)
        Assert.AreEqual(0.54030230586813977, normalcos)
        
        // biggish  value
        let maxcos = Operators.cos (1.57)
        Assert.AreEqual(0.00079632671073326335, maxcos)

    [<Test>]
    member _.cosh () =
        
        // min value
        let mincosh = Operators.cosh (0.0)
        Assert.AreEqual(1.0, mincosh)
      
        // normal value
        let normalcosh = Operators.cosh (1.0)
        Assert.AreEqual(1.5430806348152437, normalcosh)
        
        // biggish  value
        let maxcosh = Operators.cosh (1.57)
        Assert.AreEqual(2.5073466880660993, maxcosh)

    [<Test>]
    member _.decimal () =
        
        // int value
        let mindecimal = Operators.decimal (1)
        Assert.AreEqual(1M, mindecimal)
       
        // float  value
        let maxdecimal = Operators.decimal (1.0)
        Assert.AreEqual(1M, maxdecimal)

    [<Test>]
    member _.decr() =
        // zero
        let zeroref = ref 0
        Operators.decr zeroref
        Assert.AreEqual((ref -1), zeroref)
        
        //  big number
        let bigref = ref 32767
        Operators.decr bigref
        Assert.AreEqual((ref 32766), bigref)
        
        // normal value
        let normalref = ref 100
        Operators.decr (normalref)
        Assert.AreEqual((ref 99), normalref)
        
    [<Test>]
    member _.defaultArg() =
        // zero
        let zeroOption = Some(0)
        let intdefaultArg = Operators.defaultArg zeroOption 2
        Assert.AreEqual(0, intdefaultArg)
        
        //  big number
        let bigOption = Some(32767)
        let bigdefaultArg = Operators.defaultArg bigOption 32766
        Assert.AreEqual(32767, bigdefaultArg)
        
        // normal value
        let normalOption = Some(100)
        let normalfaultArg = Operators.defaultArg normalOption 100
        Assert.AreEqual(100, normalfaultArg)
        
    [<Test>]
    member _.double() =
        // int type
        let intdouble = Operators.float 100
        Assert.AreEqual(100.0, intdouble)
        
        // char type
        let chardouble = Operators.float '0'
        Assert.AreEqual(48.0, chardouble)

    [<Test>]
    member _.enum() =
        // zero
        let intarg : int32 = 0
        let intenum = Operators.enum<System.ConsoleColor> intarg
        Assert.AreEqual(System.ConsoleColor.Black, intenum)
        
        //  big number
        let bigarg : int32 = 15
        let charenum = Operators.enum<System.ConsoleColor> bigarg
        Assert.AreEqual(System.ConsoleColor.White, charenum)
        
        // normal value
        let normalarg : int32 = 9
        let boundenum = Operators.enum<System.ConsoleColor> normalarg
        Assert.AreEqual(System.ConsoleColor.Blue, boundenum)
        
#if IGNORED
    [<Test;Ignore("See FSB #3826 ? Need way to validate Operators.exit function.")>]
    member _.exit() =
        // zero
        try
            let intexit = Operators.exit 1

        with
            | _ -> ()
        //Assert.AreEqual(-1, intexit)
        
        //  big number
        let charexit = Operators.exit 32767
        //Assert.AreEqual(-1, charexit)
        
        // normal value
        let boundexit = Operators.exit 100
        Assert.AreEqual(0, boundexit)
#endif

    [<Test>]
    member _.exp() =
        // zero
        let zeroexp = Operators.exp 0.0
        Assert.AreEqual(1.0, zeroexp)
        
        //  big number
        let bigexp = Operators.exp 32767.0
        Assert.AreEqual(infinity, bigexp)
        
        // normal value
        let normalexp = Operators.exp 100.0
        Assert.AreEqual(2.6881171418161356E+43, normalexp)
        
    [<Test>]
    member _.failwith() =
        try
            let _ = Operators.failwith "failwith"
            Assert.Fail("Expect fail but not.")

        with
            | Failure("failwith") -> ()
            |_ -> Assert.Fail("Throw unexpected exception")

    [<Test>]
    member _.float() =
        // int type
        let intfloat = Operators.float 100
        Assert.AreEqual((float)100, intfloat)
        
        // char type
        let charfloat = Operators.float '0'
        Assert.AreEqual((float)48, charfloat)

    [<Test>]
    member _.float32() =
        // int type
        let intfloat32 = Operators.float32 100
        Assert.AreEqual((float32)100, intfloat32)
        
        // char type
        let charfloat32 = Operators.float32 '0'
        Assert.AreEqual((float32)48, charfloat32)

    [<Test>]
    member _.floor() =
        // float type
        let intfloor = Operators.floor 100.9
        Assert.AreEqual(100.0, intfloor)
        
        // float32 type
        let charfloor = Operators.floor ((float32)100.9)
        Assert.AreEqual(100.0f, charfloor)
    
    [<Test>]
    member _.fst() =
        // int type
        let intfst = Operators.fst (100,101)
        Assert.AreEqual(100, intfst)
        
        // char type
        let charfst = Operators.fst ('0','1')
        Assert.AreEqual('0', charfst)
        
        // null value
        let boundfst = Operators.fst (null,null)
        Assert.AreEqual(null, boundfst)
        
    [<Test>]
    member _.hash() =
        // int type
        let inthash = Operators.hash 100
        Assert.AreEqual(100, inthash)
        
        // char type
        let charhash = Operators.hash '0'
        Assert.AreEqual(3145776, charhash)
        
        // string value
        let boundhash = Operators.hash "A"
        Assert.AreEqual(-842352673, boundhash)
        
    [<Test>]
    member _.id() =
        // int type
        let intid = Operators.id 100
        Assert.AreEqual(100, intid)
        
        // char type
        let charid = Operators.id '0'
        Assert.AreEqual('0', charid)
        
        // string value
        let boundid = Operators.id "A"
        Assert.AreEqual("A", boundid)

    [<Test>]
    member _.ignore() =
        // value type
        let result = Operators.ignore 10
        Assert.AreEqual(null, result)
        
        // reference type
        let result = Operators.ignore "A"
        Assert.AreEqual(null, result)

#if IGNORED
    [<Test; Ignore( "[FSharp Bugs 1.0] #3842 - OverflowException does not pop up on Operators.int int16 int 32 int64 ")>]
    member _.incr() =
        // legit value
        let result = ref 10
        Operators.incr result
        Assert.AreEqual(11, !result)
        
        // overflow
        let result = ref (Operators.Checked.int System.Int32.MaxValue)
        CheckThrowsOverflowException(fun() -> Operators.incr result |> ignore)

#endif

    [<Test>]
    member _.infinity() =
        
        let inf = Operators.infinity
        let result = inf > System.Double.MaxValue
        Assert.IsTrue(result)
        
        // arithmetic operation
        let result = infinity + 3.0
        Assert.AreEqual(Double.PositiveInfinity, result)
        let result = infinity - 3.0
        Assert.AreEqual(Double.PositiveInfinity, result)
        let result = infinity * 3.0
        Assert.AreEqual(Double.PositiveInfinity, result)
        let result = infinity / 3.0
        Assert.AreEqual(Double.PositiveInfinity, result)
        let result = infinity / 3.0
        Assert.AreEqual(Double.PositiveInfinity, result)

    [<Test>]
    member _.infinityf() =
        
        let inf = Operators.infinityf
        let result = inf > System.Single.MaxValue
        Assert.IsTrue(result)
        
        // arithmetic operation
        let result = infinityf + 3.0f
        Assert.AreEqual(Single.PositiveInfinity, result)
        let result = infinityf - 3.0f
        Assert.AreEqual(Single.PositiveInfinity, result)
        let result = infinityf * 3.0f
        Assert.AreEqual(Single.PositiveInfinity, result)
        let result = infinityf / 3.0f
        Assert.AreEqual(Single.PositiveInfinity, result)
        let result = infinityf / 3.0f
        Assert.AreEqual(Single.PositiveInfinity, result)
