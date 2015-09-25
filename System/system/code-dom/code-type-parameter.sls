(library (system code-dom code-type-parameter)
  (export new
          is?
          code-type-parameter?
          constraints
          custom-attributes
          has-constructor-constraint?-get
          has-constructor-constraint?-set!
          has-constructor-constraint?-update!
          name-get
          name-set!
          name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeTypeParameter a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeParameter a))
  (define (code-type-parameter? a)
    (clr-is System.CodeDom.CodeTypeParameter a))
  (define-field-port
    constraints
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeParameter
    Constraints
    System.CodeDom.CodeTypeReferenceCollection)
  (define-field-port
    custom-attributes
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeParameter
    CustomAttributes
    System.CodeDom.CodeAttributeDeclarationCollection)
  (define-field-port
    has-constructor-constraint?-get
    has-constructor-constraint?-set!
    has-constructor-constraint?-update!
    (property:)
    System.CodeDom.CodeTypeParameter
    HasConstructorConstraint
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.CodeDom.CodeTypeParameter
    Name
    System.String))
