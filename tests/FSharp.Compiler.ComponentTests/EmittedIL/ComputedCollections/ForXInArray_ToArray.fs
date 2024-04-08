﻿let f1 (array: int array) = [|for x in array -> x|]
let f2 f (array: int array) = [|for x in array -> f x|]
let f3 f (array: int array) = [|for x in array -> f (); x|]
let f4 f g (array: int array) = [|for x in array -> f (); g(); x|]
let f5 (array: int array) = [|for x in array do yield x|]
let f6 f (array: int array) = [|for x in array do f (); yield x|]
let f7 f g (array: int array) = [|for x in array do f (); g (); yield x|]
