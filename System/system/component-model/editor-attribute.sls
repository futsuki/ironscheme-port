(library (system component-model editor-attribute)
  (export new
          is?
          editor-attribute?
          get-hash-code
          equals?
          editor-base-type-name
          editor-type-name
          type-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.EditorAttribute a ...)))))
  (define (is? a) (clr-is System.ComponentModel.EditorAttribute a))
  (define (editor-attribute? a)
    (clr-is System.ComponentModel.EditorAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.EditorAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.EditorAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    editor-base-type-name
    #f
    #f
    (property:)
    System.ComponentModel.EditorAttribute
    EditorBaseTypeName
    System.String)
  (define-field-port
    editor-type-name
    #f
    #f
    (property:)
    System.ComponentModel.EditorAttribute
    EditorTypeName
    System.String)
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.ComponentModel.EditorAttribute
    TypeId
    System.Object))
