(library (system code-dom code-this-reference-expression)
  (export new is? code-this-reference-expression?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeThisReferenceExpression
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeThisReferenceExpression a))
  (define (code-this-reference-expression? a)
    (clr-is System.CodeDom.CodeThisReferenceExpression a)))
