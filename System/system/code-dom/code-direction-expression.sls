(library (system code-dom code-direction-expression)
  (export new
          is?
          code-direction-expression?
          direction-get
          direction-set!
          direction-update!
          expression-get
          expression-set!
          expression-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeDirectionExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeDirectionExpression a))
  (define (code-direction-expression? a)
    (clr-is System.CodeDom.CodeDirectionExpression a))
  (define-field-port
    direction-get
    direction-set!
    direction-update!
    (property:)
    System.CodeDom.CodeDirectionExpression
    Direction
    System.CodeDom.FieldDirection)
  (define-field-port
    expression-get
    expression-set!
    expression-update!
    (property:)
    System.CodeDom.CodeDirectionExpression
    Expression
    System.CodeDom.CodeExpression))
