(library (system code-dom code-base-reference-expression)
  (export new is? code-base-reference-expression?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeBaseReferenceExpression
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeBaseReferenceExpression a))
  (define (code-base-reference-expression? a)
    (clr-is System.CodeDom.CodeBaseReferenceExpression a)))
