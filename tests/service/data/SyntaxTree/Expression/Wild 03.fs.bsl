ImplFile
  (ParsedImplFileInput
     ("/root/Expression/Wild 03.fs", false, QualifiedNameOfFile W, [], [],
      [SynModuleOrNamespace
         ([W], false, NamedModule,
          [Expr
             (DotGet
                (App
                   (Atomic, false,
                    DotGet
                      (Wild (3,0--3,1), (3,1--3,2),
                       SynLongIdent ([Foo], [], [None]), (3,0--3,5)),
                    Const (Unit, (3,5--3,7)), (3,0--3,7)), (3,7--3,8),
                 SynLongIdent ([Bar], [], [None]), (3,0--3,11)), (3,0--3,11))],
          PreXmlDoc ((1,0), FSharp.Compiler.Xml.XmlDocCollector), [], None,
          (1,0--3,11), { LeadingKeyword = Module (1,0--1,6) })], (true, true),
      { ConditionalDirectives = []
        CodeComments = [] }, set []))
