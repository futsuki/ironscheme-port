(library (system component-model read-only-attribute)
  (export new
          is?
          read-only-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          no
          yes
          default
          is-read-only?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.ReadOnlyAttribute a ...)))))
  (define (is? a) (clr-is System.ComponentModel.ReadOnlyAttribute a))
  (define (read-only-attribute? a)
    (clr-is System.ComponentModel.ReadOnlyAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ReadOnlyAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.ReadOnlyAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.ReadOnlyAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.ReadOnlyAttribute
    No
    System.ComponentModel.ReadOnlyAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.ReadOnlyAttribute
    Yes
    System.ComponentModel.ReadOnlyAttribute)
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.ReadOnlyAttribute
    Default
    System.ComponentModel.ReadOnlyAttribute)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.ComponentModel.ReadOnlyAttribute
    IsReadOnly
    System.Boolean))
