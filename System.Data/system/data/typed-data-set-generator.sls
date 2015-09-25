(library (system data typed-data-set-generator)
  (export new is? typed-data-set-generator? generate generate-id-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.TypedDataSetGenerator a ...)))))
  (define (is? a) (clr-is System.Data.TypedDataSetGenerator a))
  (define (typed-data-set-generator? a)
    (clr-is System.Data.TypedDataSetGenerator a))
  (define-method-port
    generate
    System.Data.TypedDataSetGenerator
    Generate
    (static:
      System.Void
      System.Data.DataSet
      System.CodeDom.CodeNamespace
      System.CodeDom.Compiler.ICodeGenerator))
  (define-method-port
    generate-id-name
    System.Data.TypedDataSetGenerator
    GenerateIdName
    (static:
      System.String
      System.String
      System.CodeDom.Compiler.ICodeGenerator)))
