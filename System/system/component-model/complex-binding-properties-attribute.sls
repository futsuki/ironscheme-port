(library (system component-model complex-binding-properties-attribute)
  (export new
          is?
          complex-binding-properties-attribute?
          get-hash-code
          equals?
          default
          data-member
          data-source)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ComplexBindingPropertiesAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ComplexBindingPropertiesAttribute a))
  (define (complex-binding-properties-attribute? a)
    (clr-is System.ComponentModel.ComplexBindingPropertiesAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ComplexBindingPropertiesAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.ComplexBindingPropertiesAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.ComplexBindingPropertiesAttribute
    Default
    System.ComponentModel.ComplexBindingPropertiesAttribute)
  (define-field-port
    data-member
    #f
    #f
    (property:)
    System.ComponentModel.ComplexBindingPropertiesAttribute
    DataMember
    System.String)
  (define-field-port
    data-source
    #f
    #f
    (property:)
    System.ComponentModel.ComplexBindingPropertiesAttribute
    DataSource
    System.String))
