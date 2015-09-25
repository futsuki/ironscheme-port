(library (system code-dom code-member-event)
  (export new
          is?
          code-member-event?
          implementation-types
          private-implementation-type-get
          private-implementation-type-set!
          private-implementation-type-update!
          type-get
          type-set!
          type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeMemberEvent a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeMemberEvent a))
  (define (code-member-event? a)
    (clr-is System.CodeDom.CodeMemberEvent a))
  (define-field-port
    implementation-types
    #f
    #f
    (property:)
    System.CodeDom.CodeMemberEvent
    ImplementationTypes
    System.CodeDom.CodeTypeReferenceCollection)
  (define-field-port
    private-implementation-type-get
    private-implementation-type-set!
    private-implementation-type-update!
    (property:)
    System.CodeDom.CodeMemberEvent
    PrivateImplementationType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.CodeDom.CodeMemberEvent
    Type
    System.CodeDom.CodeTypeReference))
