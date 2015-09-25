(library (system component-model notify-parent-property-attribute)
  (export new
          is?
          notify-parent-property-attribute?
          get-hash-code
          is-default-attribute?
          equals?
          default
          no
          yes
          notify-parent?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.NotifyParentPropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.NotifyParentPropertyAttribute a))
  (define (notify-parent-property-attribute? a)
    (clr-is System.ComponentModel.NotifyParentPropertyAttribute a))
  (define-method-port
    get-hash-code
    System.ComponentModel.NotifyParentPropertyAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.ComponentModel.NotifyParentPropertyAttribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    equals?
    System.ComponentModel.NotifyParentPropertyAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    default
    #f
    #f
    (static:)
    System.ComponentModel.NotifyParentPropertyAttribute
    Default
    System.ComponentModel.NotifyParentPropertyAttribute)
  (define-field-port
    no
    #f
    #f
    (static:)
    System.ComponentModel.NotifyParentPropertyAttribute
    No
    System.ComponentModel.NotifyParentPropertyAttribute)
  (define-field-port
    yes
    #f
    #f
    (static:)
    System.ComponentModel.NotifyParentPropertyAttribute
    Yes
    System.ComponentModel.NotifyParentPropertyAttribute)
  (define-field-port
    notify-parent?
    #f
    #f
    (property:)
    System.ComponentModel.NotifyParentPropertyAttribute
    NotifyParent
    System.Boolean))
