(library (system component-model data-object-field-attribute)
  (export new
          is?
          data-object-field-attribute?
          get-hash-code
          equals?
          is-identity?
          is-nullable?
          length
          primary-key?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DataObjectFieldAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DataObjectFieldAttribute a))
  (define (data-object-field-attribute? a)
    (clr-is System.ComponentModel.DataObjectFieldAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DataObjectFieldAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.DataObjectFieldAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    is-identity?
    #f
    #f
    (property:)
    System.ComponentModel.DataObjectFieldAttribute
    IsIdentity
    System.Boolean)
  (define-field-port
    is-nullable?
    #f
    #f
    (property:)
    System.ComponentModel.DataObjectFieldAttribute
    IsNullable
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.ComponentModel.DataObjectFieldAttribute
    Length
    System.Int32)
  (define-field-port
    primary-key?
    #f
    #f
    (property:)
    System.ComponentModel.DataObjectFieldAttribute
    PrimaryKey
    System.Boolean))
