existing-negative.fs (10,17)-(10,33) typecheck error The type '(int * int)' does not have 'null' as a proper value
existing-negative.fs (12,17)-(12,28) typecheck error The type 'int list' does not have 'null' as a proper value
existing-negative.fs (14,17)-(14,30) typecheck error The type '(int -> int)' does not have 'null' as a proper value
existing-negative.fs (35,14)-(35,16) typecheck error The struct, record or union type 'C6' is not structurally comparable because the type '(int -> int)' does not satisfy the 'comparison' constraint. Consider adding the 'NoComparison' attribute to the type 'C6' to clarify that the type is not comparable
existing-negative.fs (35,14)-(35,16) typecheck error The struct, record or union type 'C6' does not support structural equality because the type '(int -> int)' does not satisfy the 'equality' constraint. Consider adding the 'NoEquality' attribute to the type 'C6' to clarify that the type does not support structural equality