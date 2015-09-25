(library (system code-dom code-default-value-expression)
  (export new
          is?
          code-default-value-expression?
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeDefaultValueExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeDefaultValueExpression a))
  (define (code-default-value-expression? a)
    (clr-is System.CodeDom.CodeDefaultValueExpression a))
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.CodeDom.CodeDefaultValueExpression
    Type
    System.CodeDom.CodeTypeReference))
