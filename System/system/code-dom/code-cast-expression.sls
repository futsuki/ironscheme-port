(library (system code-dom code-cast-expression)
  (export new
          is?
          code-cast-expression?
          expression-get
          expression-set!
          expression-update!
          target-type-get
          target-type-set!
          target-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeCastExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeCastExpression a))
  (define (code-cast-expression? a)
    (clr-is System.CodeDom.CodeCastExpression a))
  (define-field-port
    expression-get
    expression-set!
    expression-update!
    (property:)
    System.CodeDom.CodeCastExpression
    Expression
    System.CodeDom.CodeExpression)
  (define-field-port
    target-type-get
    target-type-set!
    target-type-update!
    (property:)
    System.CodeDom.CodeCastExpression
    TargetType
    System.CodeDom.CodeTypeReference))
