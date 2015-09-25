(library (system code-dom code-labeled-statement)
  (export new
          is?
          code-labeled-statement?
          label-get
          label-set!
          label-update!
          statement-get
          statement-set!
          statement-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeLabeledStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeLabeledStatement a))
  (define (code-labeled-statement? a)
    (clr-is System.CodeDom.CodeLabeledStatement a))
  (define-field-port
    label-get
    label-set!
    label-update!
    (property:)
    System.CodeDom.CodeLabeledStatement
    Label
    System.String)
  (define-field-port
    statement-get
    statement-set!
    statement-update!
    (property:)
    System.CodeDom.CodeLabeledStatement
    Statement
    System.CodeDom.CodeStatement))
