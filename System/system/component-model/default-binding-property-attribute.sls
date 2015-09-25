(library (system component-model default-binding-property-attribute)
  (export new
          is?
          default-binding-property-attribute?
          get-hash-code
          equals?
          default
          name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DefaultBindingPropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DefaultBindingPropertyAttribute a))
  (define (default-binding-property-attribute? a)
    (clr-is System.ComponentModel.DefaultBindingPropertyAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DefaultBindingPropertyAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.DefaultBindingPropertyAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DefaultBindingPropertyAttribute
    Default
    System.ComponentModel.DefaultBindingPropertyAttribute)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.ComponentModel.DefaultBindingPropertyAttribute
    Name
    System.String))
