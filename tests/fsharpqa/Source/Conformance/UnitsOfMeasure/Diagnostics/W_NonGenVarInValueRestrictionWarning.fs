// #Regression #Conformance #UnitsOfMeasure #Diagnostics 
// Regression test for FSHARP1.0:4969
// Non-generalized unit-of-measure variables should display with "_" in value restriction warning
//<Expects id="FS0030" span="(6,5-6,6)" status="error">Value restriction: The value 'x' has an inferred generic type\n    val x: float<'_u> list ref\nHowever, values cannot have generic type variables like '_a in "let x: '_a"\. You can do one of the following:\n- Define it as a simple data term (e\.g\. a string literal or a union case)\n- Add an explicit type annotation\n- Use the value as a non-generic type in later code for type inference,\nor if you still want type-dependent results, you can define 'x' as a function instead by doing either:\n- Add a unit parameter\n- Write explicit type parameters like "let x<'a>"\.\nThis error is because a let binding without parameters defines a value, not a function\. Values cannot be generic because reading a value is assumed to result in the same everywhere but generic type parameters may invalidate this assumption by enabling type-dependent results\.$</Expects>
//<Expects id="FS0030" span="(7,5-7,6)" status="error">Value restriction: The value 'y' has an inferred generic type\n    val y: '_a list ref\nHowever, values cannot have generic type variables like '_a in "let x: '_a"\. You can do one of the following:\n- Define it as a simple data term (e\.g\. a string literal or a union case)\n- Add an explicit type annotation\n- Use the value as a non-generic type in later code for type inference,\nor if you still want type-dependent results, you can define 'y' as a function instead by doing either:\n- Add a unit parameter\n- Write explicit type parameters like "let x<'a>"\.\nThis error is because a let binding without parameters defines a value, not a function\. Values cannot be generic because reading a value is assumed to result in the same everywhere but generic type parameters may invalidate this assumption by enabling type-dependent results\.$</Expects>
let x = ref ([] : float<_> list)
let y = ref ([] : _ list)
