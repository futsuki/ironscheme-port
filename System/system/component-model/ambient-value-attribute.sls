(library (system component-model ambient-value-attribute)
  (export new is? ambient-value-attribute? get-hash-code equals? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.AmbientValueAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.AmbientValueAttribute a))
  (define (ambient-value-attribute? a)
    (clr-is System.ComponentModel.AmbientValueAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.AmbientValueAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.AmbientValueAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.ComponentModel.AmbientValueAttribute
    Value
    System.Object))
