(library (system component-model derived-property-descriptor)
  (export new
          is?
          derived-property-descriptor?
          set-component-type
          set-read-only
          set-property-type
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
             System.ComponentModel.DerivedPropertyDescriptor
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.DerivedPropertyDescriptor a))
  (define (derived-property-descriptor? a)
    (clr-is System.ComponentModel.DerivedPropertyDescriptor a))
  (define-method-port
    set-component-type
    System.ComponentModel.DerivedPropertyDescriptor
    SetComponentType
    (System.Void System.Type))
  (define-method-port
    set-read-only
    System.ComponentModel.DerivedPropertyDescriptor
    SetReadOnly
    (System.Void System.Boolean))
  (define-method-port
    set-property-type
    System.ComponentModel.DerivedPropertyDescriptor
    SetPropertyType
    (System.Void System.Type))
  (define-method-port
    should-serialize-value?
    System.ComponentModel.DerivedPropertyDescriptor
    ShouldSerializeValue
    (System.Boolean System.Object))
  (define-method-port
    reset-value
    System.ComponentModel.DerivedPropertyDescriptor
    ResetValue
    (System.Void System.Object))
  (define-method-port
    set-value
    System.ComponentModel.DerivedPropertyDescriptor
    SetValue
    (System.Void System.Object System.Object))
  (define-method-port
    get-value
    System.ComponentModel.DerivedPropertyDescriptor
    GetValue
    (System.Object System.Object))
  (define-method-port
    can-reset-value?
    System.ComponentModel.DerivedPropertyDescriptor
    CanResetValue
    (System.Boolean System.Object))
  (define-field-port
    component-type
    #f
    #f
    (property:)
    System.ComponentModel.DerivedPropertyDescriptor
    ComponentType
    System.Type)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.ComponentModel.DerivedPropertyDescriptor
    IsReadOnly
    System.Boolean)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.ComponentModel.DerivedPropertyDescriptor
    PropertyType
    System.Type))
