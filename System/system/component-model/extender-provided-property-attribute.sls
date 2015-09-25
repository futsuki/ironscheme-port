(library (system component-model extender-provided-property-attribute)
  (export new
          is?
          extender-provided-property-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          extender-property
          provider
          receiver-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ExtenderProvidedPropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ExtenderProvidedPropertyAttribute a))
  (define (extender-provided-property-attribute? a)
    (clr-is System.ComponentModel.ExtenderProvidedPropertyAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ExtenderProvidedPropertyAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.ExtenderProvidedPropertyAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.ExtenderProvidedPropertyAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    extender-property
    #f
    #f
    (property:)
    System.ComponentModel.ExtenderProvidedPropertyAttribute
    ExtenderProperty
    System.ComponentModel.PropertyDescriptor)
  (define-field-port
    provider
    #f
    #f
    (property:)
    System.ComponentModel.ExtenderProvidedPropertyAttribute
    Provider
    System.ComponentModel.IExtenderProvider)
  (define-field-port
    receiver-type
    #f
    #f
    (property:)
    System.ComponentModel.ExtenderProvidedPropertyAttribute
    ReceiverType
    System.Type))
