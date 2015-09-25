(library (system code-dom code-type-of-expression)
  (export new
          is?
          code-type-of-expression?
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeTypeOfExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeOfExpression a))
  (define (code-type-of-expression? a)
    (clr-is System.CodeDom.CodeTypeOfExpression a))
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.CodeDom.CodeTypeOfExpression
    Type
    System.CodeDom.CodeTypeReference))
