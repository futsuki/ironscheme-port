(library (system component-model default-value-attribute)
  (export new is? default-value-attribute? get-hash-code equals? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DefaultValueAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DefaultValueAttribute a))
  (define (default-value-attribute? a)
    (clr-is System.ComponentModel.DefaultValueAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DefaultValueAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.DefaultValueAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.ComponentModel.DefaultValueAttribute
    Value
    System.Object))
