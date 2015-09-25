(library (system component-model property-descriptor)
  (export is?
          property-descriptor?
          get-hash-code
          get-editor
          should-serialize-value?
          reset-value
          remove-value-changed
          get-child-properties
          add-value-changed
          set-value
          get-value
          can-reset-value?
          equals?
          component-type
          converter
          is-localizable?
          is-read-only?
          property-type
          supports-change-events?
          serialization-visibility)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.PropertyDescriptor a))
  (define (property-descriptor? a)
    (clr-is System.ComponentModel.PropertyDescriptor a))
  (define-method-port
    get-hash-code
    System.ComponentModel.PropertyDescriptor
    GetHashCode
    (System.Int32))
  (define-method-port
    get-editor
    System.ComponentModel.PropertyDescriptor
    GetEditor
    (System.Object System.Type))
  (define-method-port
    should-serialize-value?
    System.ComponentModel.PropertyDescriptor
    ShouldSerializeValue
    (System.Boolean System.Object))
  (define-method-port
    reset-value
    System.ComponentModel.PropertyDescriptor
    ResetValue
    (System.Void System.Object))
  (define-method-port
    remove-value-changed
    System.ComponentModel.PropertyDescriptor
    RemoveValueChanged
    (System.Void System.Object System.EventHandler))
  (define-method-port
    get-child-properties
    System.ComponentModel.PropertyDescriptor
    GetChildProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.Object
      System.Attribute[])
    (System.ComponentModel.PropertyDescriptorCollection
      System.Attribute[])
    (System.ComponentModel.PropertyDescriptorCollection System.Object)
    (System.ComponentModel.PropertyDescriptorCollection))
  (define-method-port
    add-value-changed
    System.ComponentModel.PropertyDescriptor
    AddValueChanged
    (System.Void System.Object System.EventHandler))
  (define-method-port
    set-value
    System.ComponentModel.PropertyDescriptor
    SetValue
    (System.Void System.Object System.Object))
  (define-method-port
    get-value
    System.ComponentModel.PropertyDescriptor
    GetValue
    (System.Object System.Object))
  (define-method-port
    can-reset-value?
    System.ComponentModel.PropertyDescriptor
    CanResetValue
    (System.Boolean System.Object))
  (define-method-port
    equals?
    System.ComponentModel.PropertyDescriptor
    Equals
    (System.Boolean System.Object))
  (define-field-port
    component-type
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptor
    ComponentType
    System.Type)
  (define-field-port
    converter
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptor
    Converter
    System.ComponentModel.TypeConverter)
  (define-field-port
    is-localizable?
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptor
    IsLocalizable
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptor
    IsReadOnly
    System.Boolean)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptor
    PropertyType
    System.Type)
  (define-field-port
    supports-change-events?
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptor
    SupportsChangeEvents
    System.Boolean)
  (define-field-port
    serialization-visibility
    #f
    #f
    (property:)
    System.ComponentModel.PropertyDescriptor
    SerializationVisibility
    System.ComponentModel.DesignerSerializationVisibility))
