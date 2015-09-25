(library (system code-dom code-method-return-statement)
  (export new
          is?
          code-method-return-statement?
          expression-get
          expression-set!
          expression-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeMethodReturnStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeMethodReturnStatement a))
  (define (code-method-return-statement? a)
    (clr-is System.CodeDom.CodeMethodReturnStatement a))
  (define-field-port
    expression-get
    expression-set!
    expression-update!
    (property:)
    System.CodeDom.CodeMethodReturnStatement
    Expression
    System.CodeDom.CodeExpression))
