(library (system component-model localizable-attribute)
  (export new
          is?
          localizable-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          is-localizable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.LocalizableAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.ComponentModel.LocalizableAttribute a))
  (define (localizable-attribute? a)
    (clr-is System.ComponentModel.LocalizableAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.LocalizableAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.LocalizableAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.LocalizableAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.LocalizableAttribute
    Default
    System.ComponentModel.LocalizableAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.LocalizableAttribute
    No
    System.ComponentModel.LocalizableAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.LocalizableAttribute
    Yes
    System.ComponentModel.LocalizableAttribute)
  (define-field-port
    is-localizable?
    #f
    #f
    (property:)
    System.ComponentModel.LocalizableAttribute
    IsLocalizable
    System.Boolean))
