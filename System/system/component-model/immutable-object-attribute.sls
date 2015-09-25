(library (system component-model immutable-object-attribute)
  (export new
          is?
          immutable-object-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          immutable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ImmutableObjectAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ImmutableObjectAttribute a))
  (define (immutable-object-attribute? a)
    (clr-is System.ComponentModel.ImmutableObjectAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ImmutableObjectAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.ImmutableObjectAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.ImmutableObjectAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.ImmutableObjectAttribute
    Default
    System.ComponentModel.ImmutableObjectAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.ImmutableObjectAttribute
    No
    System.ComponentModel.ImmutableObjectAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.ImmutableObjectAttribute
    Yes
    System.ComponentModel.ImmutableObjectAttribute)
  (define-field-port
    immutable?
    #f
    #f
    (property:)
    System.ComponentModel.ImmutableObjectAttribute
    Immutable
    System.Boolean))
