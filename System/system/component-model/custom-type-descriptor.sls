(library (system component-model custom-type-descriptor)
  (export is?
          custom-type-descriptor?
          get-default-event
          get-editor
          get-component-name
          get-properties
          get-converter
          get-attributes
          get-class-name
          get-events
          get-property-owner
          get-default-property)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.CustomTypeDescriptor a))
  (define (custom-type-descriptor? a)
    (clr-is System.ComponentModel.CustomTypeDescriptor a))
  (define-method-port
    get-default-event
    System.ComponentModel.CustomTypeDescriptor
    GetDefaultEvent
    (System.ComponentModel.EventDescriptor))
  (define-method-port
    get-editor
    System.ComponentModel.CustomTypeDescriptor
    GetEditor
    (System.Object System.Type))
  (define-method-port
    get-component-name
    System.ComponentModel.CustomTypeDescriptor
    GetComponentName
    (System.String))
  (define-method-port
    get-properties
    System.ComponentModel.CustomTypeDescriptor
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.Attribute[])
    (System.ComponentModel.PropertyDescriptorCollection))
  (define-method-port
    get-converter
    System.ComponentModel.CustomTypeDescriptor
    GetConverter
    (System.ComponentModel.TypeConverter))
  (define-method-port
    get-attributes
    System.ComponentModel.CustomTypeDescriptor
    GetAttributes
    (System.ComponentModel.AttributeCollection))
  (define-method-port
    get-class-name
    System.ComponentModel.CustomTypeDescriptor
    GetClassName
    (System.String))
  (define-method-port
    get-events
    System.ComponentModel.CustomTypeDescriptor
    GetEvents
    (System.ComponentModel.EventDescriptorCollection System.Attribute[])
    (System.ComponentModel.EventDescriptorCollection))
  (define-method-port
    get-property-owner
    System.ComponentModel.CustomTypeDescriptor
    GetPropertyOwner
    (System.Object System.ComponentModel.PropertyDescriptor))
  (define-method-port
    get-default-property
    System.ComponentModel.CustomTypeDescriptor
    GetDefaultProperty
    (System.ComponentModel.PropertyDescriptor)))
