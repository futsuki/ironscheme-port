(library (system component-model provide-property-attribute)
  (export new
          is?
          provide-property-attribute?
          get-hash-code
          equals?
          property-name
          receiver-type-name
          type-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ProvidePropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ProvidePropertyAttribute a))
  (define (provide-property-attribute? a)
    (clr-is System.ComponentModel.ProvidePropertyAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ProvidePropertyAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.ProvidePropertyAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    property-name
    #f
    #f
    (property:)
    System.ComponentModel.ProvidePropertyAttribute
    PropertyName
    System.String)
  (define-field-port
    receiver-type-name
    #f
    #f
    (property:)
    System.ComponentModel.ProvidePropertyAttribute
    ReceiverTypeName
    System.String)
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.ComponentModel.ProvidePropertyAttribute
    TypeId
    System.Object))
