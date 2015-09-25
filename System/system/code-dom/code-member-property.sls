(library (system code-dom code-member-property)
  (export new
          is?
          code-member-property?
          get-statements
          has-get?-get
          has-get?-set!
          has-get?-update!
          has-set?-get
          has-set?-set!
          has-set?-update!
          implementation-types
          parameters
          private-implementation-type-get
          private-implementation-type-set!
          private-implementation-type-update!
          set-statements
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeMemberProperty a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeMemberProperty a))
  (define (code-member-property? a)
    (clr-is System.CodeDom.CodeMemberProperty a))
  (define-field-port
    get-statements
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberProperty
    GetStatements
    System.CodeDom.CodeStatementCollection)
  (define-field-port
    has-get?-get
    has-get?-set!
    has-get?-update!
    (property:)
    System.CodeDom.CodeMemberProperty
    HasGet
    System.Boolean)
  (define-field-port
    has-set?-get
    has-set?-set!
    has-set?-update!
    (property:)
    System.CodeDom.CodeMemberProperty
    HasSet
    System.Boolean)
  (define-field-port
    implementation-types
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberProperty
    ImplementationTypes
    System.CodeDom.CodeTypeReferenceCollection)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberProperty
    Parameters
    System.CodeDom.CodeParameterDeclarationExpressionCollection)
  (define-field-port
    private-implementation-type-get
    private-implementation-type-set!
    private-implementation-type-update!
    (property:)
    System.CodeDom.CodeMemberProperty
    PrivateImplementationType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    set-statements
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberProperty
    SetStatements
    System.CodeDom.CodeStatementCollection)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.CodeDom.CodeMemberProperty
    Type
    System.CodeDom.CodeTypeReference))
