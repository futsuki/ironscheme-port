(library (system code-dom code-type-reference-expression)
  (export new
          is?
          code-type-reference-expression?
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeTypeReferenceExpression
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeReferenceExpression a))
  (define (code-type-reference-expression? a)
    (clr-is System.CodeDom.CodeTypeReferenceExpression a))
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.CodeDom.CodeTypeReferenceExpression
    Type
    System.CodeDom.CodeTypeReference))
