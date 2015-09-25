(library (system component-model reflection-property-descriptor)
  (export new
          is?
          reflection-property-descriptor?
          should-serialize-value?
          reset-value
          set-value
          get-value
          can-reset-value?
          component-type
          is-read-only?
          property-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ReflectionPropertyDescriptor
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ReflectionPropertyDescriptor a))
  (define (reflection-property-descriptor? a)
    (clr-is System.ComponentModel.ReflectionPropertyDescriptor a))
  (define-method-port
    should-serialize-value?
    System.ComponentModel.ReflectionPropertyDescriptor
    ShouldSerializeValue
    (System.Boolean System.Object))
  (define-method-port
    reset-value
    System.ComponentModel.ReflectionPropertyDescriptor
    ResetValue
    (System.Void System.Object))
  (define-method-port
    set-value
    System.ComponentModel.ReflectionPropertyDescriptor
    SetValue
    (System.Void System.Object System.Object))
  (define-method-port
    get-value
    System.ComponentModel.ReflectionPropertyDescriptor
    GetValue
    (System.Object System.Object))
  (define-method-port
    can-reset-value?
    System.ComponentModel.ReflectionPropertyDescriptor
    CanResetValue
    (System.Boolean System.Object))
  (define-field-port
    component-type
    #f
    #f
    (property:)
    System.ComponentModel.ReflectionPropertyDescriptor
    ComponentType
    System.Type)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.ComponentModel.ReflectionPropertyDescriptor
    IsReadOnly
    System.Boolean)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.ComponentModel.ReflectionPropertyDescriptor
    PropertyType
    System.Type))
