(library (system component-model default-event-attribute)
  (export new
          is?
          default-event-attribute?
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
             System.ComponentModel.DefaultEventAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DefaultEventAttribute a))
  (define (default-event-attribute? a)
    (clr-is System.ComponentModel.DefaultEventAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DefaultEventAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.ComponentModel.DefaultEventAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DefaultEventAttribute
    Default
    System.ComponentModel.DefaultEventAttribute)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.ComponentModel.DefaultEventAttribute
    Name
    System.String))
