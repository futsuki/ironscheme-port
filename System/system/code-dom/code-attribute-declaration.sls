(library (system code-dom code-attribute-declaration)
  (export new
          is?
          code-attribute-declaration?
          arguments
          name-get
          name-set!
          name-update!
          attribute-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeAttributeDeclaration a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeAttributeDeclaration a))
  (define (code-attribute-declaration? a)
    (clr-is System.CodeDom.CodeAttributeDeclaration a))
  (define-field-port
    arguments
    #f
    #f
    (property:)
    System.CodeDom.CodeAttributeDeclaration
    Arguments
    System.CodeDom.CodeAttributeArgumentCollection)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.CodeDom.CodeAttributeDeclaration
    Name
    System.String)
  (define-field-port
    attribute-type
    #f
    #f
    (property:)
    System.CodeDom.CodeAttributeDeclaration
    AttributeType
    System.CodeDom.CodeTypeReference))
