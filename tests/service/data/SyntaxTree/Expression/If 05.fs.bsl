ImplFile
  (ParsedImplFileInput
     ("/root/Expression/If 05.fs", false, QualifiedNameOfFile Module, [],
      [SynModuleOrNamespace
         ([Module], false, NamedModule,
          [Expr
             (IfThenElse
                (Const (Bool true, (3,3--3,7)),
                 ArbitraryAfterError ("typedSequentialExprBlock1", (3,12--3,12)),
                 None, Yes (3,0--3,12), false, (3,0--3,12),
                 { IfKeyword = (3,0--3,2)
                   IsElif = false
                   ThenKeyword = (3,8--3,12)
                   ElseKeyword = None
                   IfToThenRange = (3,0--3,12) }), (3,0--3,12));
           Expr (Const (Unit, (5,0--5,2)), (5,0--5,2))],
          PreXmlDoc ((1,0), FSharp.Compiler.Xml.XmlDocCollector), [], None,
          (1,0--5,2), { LeadingKeyword = Module (1,0--1,6) })], (true, true),
      { ConditionalDirectives = []
        WarnDirectives = []
        CodeComments = [] }, set []))

(5,0)-(5,1) parse error Unexpected syntax or possible incorrect indentation: this token is offside of context started at position (3:1). Try indenting this further.
To continue using non-conforming indentation, pass the '--strict-indentation-' flag to the compiler, or set the language version to F# 7.
(5,0)-(5,1) parse error Expecting expression
