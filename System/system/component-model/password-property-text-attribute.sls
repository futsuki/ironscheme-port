(library (system component-model password-property-text-attribute)
  (export new
          is?
          password-property-text-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          password?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.PasswordPropertyTextAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.PasswordPropertyTextAttribute a))
  (define (password-property-text-attribute? a)
    (clr-is System.ComponentModel.PasswordPropertyTextAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.PasswordPropertyTextAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.PasswordPropertyTextAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.PasswordPropertyTextAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.PasswordPropertyTextAttribute
    Default
    System.ComponentModel.PasswordPropertyTextAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.PasswordPropertyTextAttribute
    No
    System.ComponentModel.PasswordPropertyTextAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.PasswordPropertyTextAttribute
    Yes
    System.ComponentModel.PasswordPropertyTextAttribute)
  (define-field-port
    password?
    #f
    #f
    (property:)
    System.ComponentModel.PasswordPropertyTextAttribute
    Password
    System.Boolean))
