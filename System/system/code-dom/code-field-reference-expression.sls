(library (system code-dom code-field-reference-expression)
  (export new
          is?
          code-field-reference-expression?
          field-name-get
          field-name-set!
          field-name-update!
          target-object-get
          target-object-set!
          target-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeFieldReferenceExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeFieldReferenceExpression a))
  (define (code-field-reference-expression? a)
    (clr-is System.CodeDom.CodeFieldReferenceExpression a))
  (define-field-port
    field-name-get
    field-name-set!
    field-name-update!
    (property:)
    System.CodeDom.CodeFieldReferenceExpression
    FieldName
    System.String)
  (define-field-port
    target-object-get
    target-object-set!
    target-object-update!
    (property:)
    System.CodeDom.CodeFieldReferenceExpression
    TargetObject
    System.CodeDom.CodeExpression))
