let a =    
    match 1 with 
    | US -> "US"
    | UK -> "UK"
    | U -> "U"

let b = 
    match 2 with 
    | Us -> "Us"
    | Uk -> "Uk"
    | U -> "u"

let c =
    match 1 with 
    | USA -> "USA"
    | CAN -> "CAN"

let d =
    match 2 with 
    | Usa -> "Usa"

try ()
with
| Exn -> ()

try ()
with
| Ex -> ()

type CustomerId = CustomerId of string

let customerId = CustomerId("123")

match customerId with
| CustomerId BBB -> ()

type Record = { Name: string; Age: int }

match { Name = "Alice"; Age = 30 } with
| { Name = Al } -> printfn "Alice"
| { Name = Bo } -> printfn "Bob"
| { Name = Pe } -> printfn "Pepe"