(library (system component-model bindable-attribute)
  (export new
          is?
          bindable-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          no
          yes
          default
          direction
          bindable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.BindableAttribute a ...)))))
  (define (is? a) (clr-is System.ComponentModel.BindableAttribute a))
  (define (bindable-attribute? a)
    (clr-is System.ComponentModel.BindableAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.BindableAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.BindableAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.BindableAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.BindableAttribute
    No
    System.ComponentModel.BindableAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.BindableAttribute
    Yes
    System.ComponentModel.BindableAttribute)
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.BindableAttribute
    Default
    System.ComponentModel.BindableAttribute)
  (define-field-port
    direction
    #f
    #f
    (property:)
    System.ComponentModel.BindableAttribute
    Direction
    System.ComponentModel.BindingDirection)
  (define-field-port
    bindable?
    #f
    #f
    (property:)
    System.ComponentModel.BindableAttribute
    Bindable
    System.Boolean))
