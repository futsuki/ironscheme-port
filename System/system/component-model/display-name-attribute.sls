(library (system component-model display-name-attribute)
  (export new
          is?
          display-name-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          display-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.DisplayNameAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.ComponentModel.DisplayNameAttribute a))
  (define (display-name-attribute? a)
    (clr-is System.ComponentModel.DisplayNameAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.DisplayNameAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.DisplayNameAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.DisplayNameAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.DisplayNameAttribute
    Default
    System.ComponentModel.DisplayNameAttribute)
  (define-field-port
    display-name
    #f
    #f
    (property:)
    System.ComponentModel.DisplayNameAttribute
    DisplayName
    System.String))
