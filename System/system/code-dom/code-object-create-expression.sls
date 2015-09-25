(library (system code-dom code-object-create-expression)
  (export new
          is?
          code-object-create-expression?
          create-type-get
          create-type-set!
          create-type-update!
          parameters)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeObjectCreateExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeObjectCreateExpression a))
  (define (code-object-create-expression? a)
    (clr-is System.CodeDom.CodeObjectCreateExpression a))
  (define-field-port
    create-type-get
    create-type-set!
    create-type-update!
    (property:)
    System.CodeDom.CodeObjectCreateExpression
    CreateType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.CodeDom.CodeObjectCreateExpression
    Parameters
    System.CodeDom.CodeExpressionCollection))
