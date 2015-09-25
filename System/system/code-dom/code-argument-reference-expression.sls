(library (system code-dom code-argument-reference-expression)
  (export new
          is?
          code-argument-reference-expression?
          parameter-name-get
          parameter-name-set!
          parameter-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeArgumentReferenceExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeArgumentReferenceExpression a))
  (define (code-argument-reference-expression? a)
    (clr-is System.CodeDom.CodeArgumentReferenceExpression a))
  (define-field-port
    parameter-name-get
    parameter-name-set!
    parameter-name-update!
    (property:)
    System.CodeDom.CodeArgumentReferenceExpression
    ParameterName
    System.String))
