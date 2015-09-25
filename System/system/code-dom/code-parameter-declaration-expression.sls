(library (system code-dom code-parameter-declaration-expression)
  (export new
          is?
          code-parameter-declaration-expression?
          custom-attributes-get
          custom-attributes-set!
          custom-attributes-update!
          direction-get
          direction-set!
          direction-update!
          name-get
          name-set!
          name-update!
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeParameterDeclarationExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeParameterDeclarationExpression a))
  (define (code-parameter-declaration-expression? a)
    (clr-is System.CodeDom.CodeParameterDeclarationExpression a))
  (define-field-port
    custom-attributes-get
    custom-attributes-set!
    custom-attributes-update!
    (property:)
    System.CodeDom.CodeParameterDeclarationExpression
    CustomAttributes
    System.CodeDom.CodeAttributeDeclarationCollection)
  (define-field-port
    direction-get
    direction-set!
    direction-update!
    (property:)
    System.CodeDom.CodeParameterDeclarationExpression
    Direction
    System.CodeDom.FieldDirection)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.CodeDom.CodeParameterDeclarationExpression
    Name
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.CodeDom.CodeParameterDeclarationExpression
    Type
    System.CodeDom.CodeTypeReference))
