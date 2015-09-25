(library (system code-dom code-type-reference)
  (export new
          is?
          code-type-reference?
          array-element-type-get
          array-element-type-set!
          array-element-type-update!
          array-rank-get
          array-rank-set!
          array-rank-update!
          base-type-get
          base-type-set!
          base-type-update!
          options-get
          options-set!
          options-update!
          type-arguments)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeTypeReference a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeReference a))
  (define (code-type-reference? a)
    (clr-is System.CodeDom.CodeTypeReference a))
  (define-field-port
    array-element-type-get
    array-element-type-set!
    array-element-type-update!
    (property:)
    System.CodeDom.CodeTypeReference
    ArrayElementType
    System.CodeDom.CodeTypeReference)
  (define-field-port
    array-rank-get
    array-rank-set!
    array-rank-update!
    (property:)
    System.CodeDom.CodeTypeReference
    ArrayRank
    System.Int32)
  (define-field-port
    base-type-get
    base-type-set!
    base-type-update!
    (property:)
    System.CodeDom.CodeTypeReference
    BaseType
    System.String)
  (define-field-port
    options-get
    options-set!
    options-update!
    (property:)
    System.CodeDom.CodeTypeReference
    Options
    System.CodeDom.CodeTypeReferenceOptions)
  (define-field-port
    type-arguments
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeReference
    TypeArguments
    System.CodeDom.CodeTypeReferenceCollection))
