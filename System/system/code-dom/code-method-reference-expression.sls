(library (system code-dom code-method-reference-expression)
  (export new
          is?
          code-method-reference-expression?
          method-name-get
          method-name-set!
          method-name-update!
          target-object-get
          target-object-set!
          target-object-update!
          type-arguments)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeMethodReferenceExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeMethodReferenceExpression a))
  (define (code-method-reference-expression? a)
    (clr-is System.CodeDom.CodeMethodReferenceExpression a))
  (define-field-port
    method-name-get
    method-name-set!
    method-name-update!
    (property:)
    System.CodeDom.CodeMethodReferenceExpression
    MethodName
    System.String)
  (define-field-port
    target-object-get
    target-object-set!
    target-object-update!
    (property:)
    System.CodeDom.CodeMethodReferenceExpression
    TargetObject
    System.CodeDom.CodeExpression)
  (define-field-port
    type-arguments
    #f
    #f
    (property:)
    System.CodeDom.CodeMethodReferenceExpression
    TypeArguments
    System.CodeDom.CodeTypeReferenceCollection))
