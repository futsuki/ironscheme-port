(library (system data custom-data-class-generator)
  (export new
          is?
          custom-data-class-generator?
          make-safe-name
          make-safe-name-internal
          create-data-set-classes)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.CustomDataClassGenerator a ...)))))
  (define (is? a) (clr-is System.Data.CustomDataClassGenerator a))
  (define (custom-data-class-generator? a)
    (clr-is System.Data.CustomDataClassGenerator a))
  (define-method-port
    make-safe-name
    System.Data.CustomDataClassGenerator
    MakeSafeName
    (static:
      System.String
      System.String
      System.CodeDom.Compiler.CodeDomProvider)
    (static:
      System.String
      System.String
      System.CodeDom.Compiler.ICodeGenerator))
  (define-method-port
    make-safe-name-internal
    System.Data.CustomDataClassGenerator
    MakeSafeNameInternal
    (static: System.String System.String))
  (define-method-port
    create-data-set-classes
    System.Data.CustomDataClassGenerator
    CreateDataSetClasses
    (static:
      System.Void
      System.Data.DataSet
      System.CodeDom.CodeCompileUnit
      System.CodeDom.CodeNamespace
      System.CodeDom.Compiler.CodeDomProvider
      System.Data.ClassGeneratorOptions)
    (static:
      System.Void
      System.Data.DataSet
      System.CodeDom.CodeNamespace
      System.CodeDom.Compiler.CodeDomProvider
      System.Data.ClassGeneratorOptions)
    (static:
      System.Void
      System.Data.DataSet
      System.CodeDom.CodeNamespace
      System.CodeDom.Compiler.ICodeGenerator
      System.Data.ClassGeneratorOptions)))
