﻿let f1 (list: int list) = [for x in list -> x]
let f2 f (list: int list) = [for x in list -> f x]
let f3 f (list: int list) = [for x in list -> f (); x]
let f4 f g (list: int list) = [for x in list -> f (); g(); x]
let f5 (list: int list) = [for x in list do yield x]
let f6 f (list: int list) = [for x in list do f (); yield x]
let f7 f g (list: int list) = [for x in list do f (); g (); yield x]
