ImplFile
  (ParsedImplFileInput
     ("/root/OperatorName/ActivePatternExceptionAnd 04.fs", false,
      QualifiedNameOfFile ActivePatternExceptionAnd 04, [],
      [SynModuleOrNamespace
         ([ActivePatternExceptionAnd 04], false, AnonModule,
          [Exception
             (SynExceptionDefn
                (SynExceptionDefnRepr
                   ([],
                    SynUnionCase
                      ([], SynIdent (MyExn, None), Fields [], PreXmlDocEmpty,
                       None, (1,10--1,15), { BarRange = None }), None,
                    PreXmlDoc ((1,0), FSharp.Compiler.Xml.XmlDocCollector), None,
                    (1,0--1,15)), None, [], (1,0--1,15)), (1,0--1,15));
           Let
             (false,
              [SynBinding
                 (None, Normal, false, false, [],
                  PreXmlDoc ((3,0), FSharp.Compiler.Xml.XmlDocCollector),
                  SynValData
                    (None, SynValInfo ([], SynArgInfo ([], false, None)), None),
                  Paren
                    (Ands
                       ([Paren
                           (Typed
                              (Wild (3,6--3,7),
                               LongIdent (SynLongIdent ([exn], [], [None])),
                               (3,6--3,13)), (3,5--3,14));
                         Paren
                           (LongIdent
                              (SynLongIdent ([MyExn], [], [None]), None, None,
                               Pats [], None, (3,18--3,23)), (3,17--3,24))],
                        (3,5--3,24)), (3,4--3,25)), None,
                  App
                    (NonAtomic, false, Ident exn, Const (Unit, (3,32--3,34)),
                     (3,28--3,34)), (3,4--3,25), Yes (3,0--3,34),
                  { LeadingKeyword = Let (3,0--3,3)
                    InlineKeyword = None
                    EqualsRange = Some (3,26--3,27) })], (3,0--3,34))],
          PreXmlDocEmpty, [], None, (1,0--3,34), { LeadingKeyword = None })],
      (true, true), { ConditionalDirectives = []
                      WarnDirectives = []
                      CodeComments = [] }, set []))

(1,0)-(2,0) parse warning The declarations in this file will be placed in an implicit module 'ActivePatternExceptionAnd 04' based on the file name 'ActivePatternExceptionAnd 04.fs'. However this is not a valid F# identifier, so the contents will not be accessible from other files. Consider renaming the file or adding a 'module' or 'namespace' declaration at the top of the file.
