(library (system component-model list-bindable-attribute)
  (export new
          is?
          list-bindable-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          list-bindable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ListBindableAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ListBindableAttribute a))
  (define (list-bindable-attribute? a)
    (clr-is System.ComponentModel.ListBindableAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.ListBindableAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.ListBindableAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.ListBindableAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.ListBindableAttribute
    Default
    System.ComponentModel.ListBindableAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.ListBindableAttribute
    No
    System.ComponentModel.ListBindableAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.ListBindableAttribute
    Yes
    System.ComponentModel.ListBindableAttribute)
  (define-field-port
    list-bindable?
    #f
    #f
    (property:)
    System.ComponentModel.ListBindableAttribute
    ListBindable
    System.Boolean))
