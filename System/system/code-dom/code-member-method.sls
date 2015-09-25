(library (system code-dom code-member-method)
  (export new
          is?
          code-member-method?
          implementation-types
          parameters
          private-implementation-type-get
          private-implementation-type-set!
          private-implementation-type-update!
          return-type-get
          return-type-set!
          return-type-update!
          statements
          return-type-custom-attributes
          type-parameters)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeMemberMethod a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeMemberMethod a))
  (define (code-member-method? a)
    (clr-is System.CodeDom.CodeMemberMethod a))
  (define-field-port
    implementation-types
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberMethod
    ImplementationTypes
    System.CodeDom.CodeTypeReferenceCollection)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberMethod
    Parameters
    System.CodeDom.CodeParameterDeclarationExpressionCollection)
  (define-field-port
    private-implementation-type-get
    private-implementation-type-set!
    private-implementation-type-update!
    (property:)
    System.CodeDom.CodeMemberMethod
    PrivateImplementationType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    return-type-get
    return-type-set!
    return-type-update!
    (property:)
    System.CodeDom.CodeMemberMethod
    ReturnType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    statements
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberMethod
    Statements
    System.CodeDom.CodeStatementCollection)
  (define-field-port
    return-type-custom-attributes
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberMethod
    ReturnTypeCustomAttributes
    System.CodeDom.CodeAttributeDeclarationCollection)
  (define-field-port
    type-parameters
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberMethod
    TypeParameters
    System.CodeDom.CodeTypeParameterCollection))
