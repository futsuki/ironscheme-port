(library (system code-dom code-property-reference-expression)
  (export new
          is?
          code-property-reference-expression?
          property-name-get
          property-name-set!
          property-name-update!
          target-object-get
          target-object-set!
          target-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodePropertyReferenceExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodePropertyReferenceExpression a))
  (define (code-property-reference-expression? a)
    (clr-is System.CodeDom.CodePropertyReferenceExpression a))
  (define-field-port
    property-name-get
    property-name-set!
    property-name-update!
    (property:)
    System.CodeDom.CodePropertyReferenceExpression
    PropertyName
    System.String)
  (define-field-port
    target-object-get
    target-object-set!
    target-object-update!
    (property:)
    System.CodeDom.CodePropertyReferenceExpression
    TargetObject
    System.CodeDom.CodeExpression))
