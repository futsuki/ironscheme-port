(library (system code-dom code-property-set-value-reference-expression)
  (export new is? code-property-set-value-reference-expression?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodePropertySetValueReferenceExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodePropertySetValueReferenceExpression a))
  (define (code-property-set-value-reference-expression? a)
    (clr-is System.CodeDom.CodePropertySetValueReferenceExpression a)))
