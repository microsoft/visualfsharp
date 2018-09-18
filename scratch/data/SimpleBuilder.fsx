// TODO Work towards defining an option applicative builder here

[<Struct>]
type OptionalBuilder =

    member __.Bind(opt, f) =
        match opt with
        | Some x -> f x
        | None -> None
    
    // TODO Make this actually get called when `let! ... and! ...` syntax is used (and automagically if RHSs allow it?)
    member __.Apply(fOpt : ('a -> 'b) option, xOpt : 'a option) : 'b option =
        match fOpt, xOpt with
        | Some f, Some x -> Some <| f x
        | _ -> None

    // TODO Not needed, but for maximum efficiency, we want to use this if it is defined
    member __.Map(f : 'a -> 'b, xOpt : 'a option) : 'b option =
        match xOpt with
        | Some x -> Some <| f x
        | None -> None

    member __.Return(x) =
        Some x

    //member __.Zero () = // TODO: Remove - just here to explore current compiler limitations
    //    None
    
let opt = OptionalBuilder()

let fOpt = Some (sprintf "f (x = %d) (y = %s) (z = %f)")
let xOpt = Some 1
let yOpt = Some "A"
let zOpt = Some 3.0

let foo =
    opt {
        let! f = fOpt
        and! x = xOpt
        and! y = yOpt
        and! z = zOpt
        return f x y z
    }

printfn "foo: \"%+A\"" foo 

let bar =
    opt {
        let! x = None
        and! y = Some 1
        and! z = Some 2
        return x + y + z + 1
    }

printfn "bar: %+A" bar 

type 'a SingleCaseDu = SingleCaseDu of 'a

let baz =
    opt {
        let! x                = Some 4
        and! (SingleCaseDu y) = Some (SingleCaseDu 30)
        and! (z,_)            = Some (200, "whatever")
        return x + y + z + 1000
    }

printfn "baz: %+A" baz 

(*
let foo' =
    opt {
        let! x' = x
        and! y' = y
        and! z' = z
        return sprintf "x = %d, y = %s, z = %f" x y z
    }
*)
