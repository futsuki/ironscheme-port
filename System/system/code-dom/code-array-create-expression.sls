(library (system code-dom code-array-create-expression)
  (export new
          is?
          code-array-create-expression?
          create-type-get
          create-type-set!
          create-type-update!
          initializers
          size-expression-get
          size-expression-set!
          size-expression-update!
          size-get
          size-set!
          size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeArrayCreateExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeArrayCreateExpression a))
  (define (code-array-create-expression? a)
    (clr-is System.CodeDom.CodeArrayCreateExpression a))
  (define-field-port
    create-type-get
    create-type-set!
    create-type-update!
    (property:)
    System.CodeDom.CodeArrayCreateExpression
    CreateType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    initializers
    #f
    #f
    (property:)
    System.CodeDom.CodeArrayCreateExpression
    Initializers
    System.CodeDom.CodeExpressionCollection)
  (define-field-port
    size-expression-get
    size-expression-set!
    size-expression-update!
    (property:)
    System.CodeDom.CodeArrayCreateExpression
    SizeExpression
    System.CodeDom.CodeExpression)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    System.CodeDom.CodeArrayCreateExpression
    Size
    System.Int32))
