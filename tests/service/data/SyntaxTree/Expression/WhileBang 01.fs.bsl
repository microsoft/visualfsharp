ImplFile
  (ParsedImplFileInput
     ("/root/Expression/WhileBang 01.fs", false, QualifiedNameOfFile Module, [],
      [SynModuleOrNamespace
         ([Module], false, NamedModule,
          [Expr
             (WhileBang
                (Yes (3,0--3,28),
                 App
                   (NonAtomic, false, Ident async,
                    ComputationExpr
                      (false,
                       YieldOrReturn
                         ((false, true), Const (Bool true, (3,22--3,26)),
                          (3,15--3,26)), (3,13--3,28)), (3,7--3,28)),
                 Const (Int32 2, (4,4--4,5)), (3,0--4,5)), (3,0--4,5));
           Expr (Const (Int32 3, (6,0--6,1)), (6,0--6,1))],
          PreXmlDoc ((1,0), FSharp.Compiler.Xml.XmlDocCollector), [], None,
          (1,0--6,1), { LeadingKeyword = Module (1,0--1,6) })], (true, true),
      { ConditionalDirectives = []
        CodeComments = [] }, set []))
