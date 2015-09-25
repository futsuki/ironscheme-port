(library (system code-dom code-delegate-create-expression)
  (export new
          is?
          code-delegate-create-expression?
          delegate-type-get
          delegate-type-set!
          delegate-type-update!
          method-name-get
          method-name-set!
          method-name-update!
          target-object-get
          target-object-set!
          target-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeDelegateCreateExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeDelegateCreateExpression a))
  (define (code-delegate-create-expression? a)
    (clr-is System.CodeDom.CodeDelegateCreateExpression a))
  (define-field-port
    delegate-type-get
    delegate-type-set!
    delegate-type-update!
    (property:)
    System.CodeDom.CodeDelegateCreateExpression
    DelegateType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    method-name-get
    method-name-set!
    method-name-update!
    (property:)
    System.CodeDom.CodeDelegateCreateExpression
    MethodName
    System.String)
  (define-field-port
    target-object-get
    target-object-set!
    target-object-update!
    (property:)
    System.CodeDom.CodeDelegateCreateExpression
    TargetObject
    System.CodeDom.CodeExpression))
