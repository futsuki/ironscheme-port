(library (system code-dom code-primitive-expression)
  (export new
          is?
          code-primitive-expression?
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodePrimitiveExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodePrimitiveExpression a))
  (define (code-primitive-expression? a)
    (clr-is System.CodeDom.CodePrimitiveExpression a))
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.CodeDom.CodePrimitiveExpression
    Value
    System.Object))
