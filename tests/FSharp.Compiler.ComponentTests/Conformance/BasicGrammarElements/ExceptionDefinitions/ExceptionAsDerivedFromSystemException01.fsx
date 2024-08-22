// #Conformance #TypesAndModules #Exceptions 
// Exception values may be generated by defining and using classes that extends System.Exception
// In this test we verify that both definitions can be used interchangably
//<Expects status="success"></Expects>

type E1(s) = class
              inherit System.Exception(s)
             end

exception E2 of string

let e1 = E1("E1")
let e2 = E2("E2")

let r1 = try
           raise(e1)
           false
         with
           | :? E1 -> true
           | E2(_) -> false

let r2 = try
           raise(e2)
           false
         with
           | :? E1 -> false
           | :? E2 -> true

if not (r1 && r2) then failwith "Failed: 1"
