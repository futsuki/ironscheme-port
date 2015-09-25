(library (system data generator)
  (export new is? generator? run generate-data-row-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Generator a ...)))))
  (define (is? a) (clr-is System.Data.Generator a))
  (define (generator? a) (clr-is System.Data.Generator a))
  (define-method-port run System.Data.Generator Run (System.Void))
  (define-method-port
    generate-data-row-type
    System.Data.Generator
    GenerateDataRowType
    (System.CodeDom.CodeTypeDeclaration System.Data.DataTable)))
