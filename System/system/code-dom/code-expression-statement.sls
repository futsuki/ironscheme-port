(library (system code-dom code-expression-statement)
  (export new
          is?
          code-expression-statement?
          expression-get
          expression-set!
          expression-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeExpressionStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeExpressionStatement a))
  (define (code-expression-statement? a)
    (clr-is System.CodeDom.CodeExpressionStatement a))
  (define-field-port
    expression-get
    expression-set!
    expression-update!
    (property:)
    System.CodeDom.CodeExpressionStatement
    Expression
    System.CodeDom.CodeExpression))
