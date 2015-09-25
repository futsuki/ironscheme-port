(library (system code-dom code-type-declaration)
  (export new
          is?
          code-type-declaration?
          base-types
          is-class?-get
          is-class?-set!
          is-class?-update!
          is-enum?-get
          is-enum?-set!
          is-enum?-update!
          is-interface?-get
          is-interface?-set!
          is-interface?-update!
          is-struct?-get
          is-struct?-set!
          is-struct?-update!
          members
          type-attributes-get
          type-attributes-set!
          type-attributes-update!
          is-partial?-get
          is-partial?-set!
          is-partial?-update!
          type-parameters)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeTypeDeclaration a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeDeclaration a))
  (define (code-type-declaration? a)
    (clr-is System.CodeDom.CodeTypeDeclaration a))
  (define-field-port
    base-types
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeDeclaration
    BaseTypes
    System.CodeDom.CodeTypeReferenceCollection)
  (define-field-port
    is-class?-get
    is-class?-set!
    is-class?-update!
    (property:)
    System.CodeDom.CodeTypeDeclaration
    IsClass
    System.Boolean)
  (define-field-port
    is-enum?-get
    is-enum?-set!
    is-enum?-update!
    (property:)
    System.CodeDom.CodeTypeDeclaration
    IsEnum
    System.Boolean)
  (define-field-port
    is-interface?-get
    is-interface?-set!
    is-interface?-update!
    (property:)
    System.CodeDom.CodeTypeDeclaration
    IsInterface
    System.Boolean)
  (define-field-port
    is-struct?-get
    is-struct?-set!
    is-struct?-update!
    (property:)
    System.CodeDom.CodeTypeDeclaration
    IsStruct
    System.Boolean)
  (define-field-port
    members
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeDeclaration
    Members
    System.CodeDom.CodeTypeMemberCollection)
  (define-field-port
    type-attributes-get
    type-attributes-set!
    type-attributes-update!
    (property:)
    System.CodeDom.CodeTypeDeclaration
    TypeAttributes
    System.Reflection.TypeAttributes)
  (define-field-port
    is-partial?-get
    is-partial?-set!
    is-partial?-update!
    (property:)
    System.CodeDom.CodeTypeDeclaration
    IsPartial
    System.Boolean)
  (define-field-port
    type-parameters
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeDeclaration
    TypeParameters
    System.CodeDom.CodeTypeParameterCollection))
