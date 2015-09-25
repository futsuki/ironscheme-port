(library (system data data-column-property-descriptor)
  (export new
          is?
          data-column-property-descriptor?
          set-component-type
          set-read-only
          set-property-type
          should-serialize-value?
          reset-value
          set-browsable
          set-value
          get-value
          can-reset-value?
          component-type
          is-read-only?
          is-browsable?
          property-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DataColumnPropertyDescriptor a ...)))))
  (define (is? a) (clr-is System.Data.DataColumnPropertyDescriptor a))
  (define (data-column-property-descriptor? a)
    (clr-is System.Data.DataColumnPropertyDescriptor a))
  (define-method-port
    set-component-type
    System.Data.DataColumnPropertyDescriptor
    SetComponentType
    (System.Void System.Type))
  (define-method-port
    set-read-only
    System.Data.DataColumnPropertyDescriptor
    SetReadOnly
    (System.Void System.Boolean))
  (define-method-port
    set-property-type
    System.Data.DataColumnPropertyDescriptor
    SetPropertyType
    (System.Void System.Type))
  (define-method-port
    should-serialize-value?
    System.Data.DataColumnPropertyDescriptor
    ShouldSerializeValue
    (System.Boolean System.Object))
  (define-method-port
    reset-value
    System.Data.DataColumnPropertyDescriptor
    ResetValue
    (System.Void System.Object))
  (define-method-port
    set-browsable
    System.Data.DataColumnPropertyDescriptor
    SetBrowsable
    (System.Void System.Boolean))
  (define-method-port
    set-value
    System.Data.DataColumnPropertyDescriptor
    SetValue
    (System.Void System.Object System.Object))
  (define-method-port
    get-value
    System.Data.DataColumnPropertyDescriptor
    GetValue
    (System.Object System.Object))
  (define-method-port
    can-reset-value?
    System.Data.DataColumnPropertyDescriptor
    CanResetValue
    (System.Boolean System.Object))
  (define-field-port
    component-type
    #f
    #f
    (property:)
    System.Data.DataColumnPropertyDescriptor
    ComponentType
    System.Type)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.DataColumnPropertyDescriptor
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-browsable?
    #f
    #f
    (property:)
    System.Data.DataColumnPropertyDescriptor
    IsBrowsable
    System.Boolean)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.Data.DataColumnPropertyDescriptor
    PropertyType
    System.Type))
