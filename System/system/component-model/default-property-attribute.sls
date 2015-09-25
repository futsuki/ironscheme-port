(library (system component-model default-property-attribute)
  (export new
          is?
          default-property-attribute?
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
             System.ComponentModel.DefaultPropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DefaultPropertyAttribute a))
  (define (default-property-attribute? a)
    (clr-is System.ComponentModel.DefaultPropertyAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DefaultPropertyAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.DefaultPropertyAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DefaultPropertyAttribute
    Default
    System.ComponentModel.DefaultPropertyAttribute)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.ComponentModel.DefaultPropertyAttribute
    Name
    System.String))
