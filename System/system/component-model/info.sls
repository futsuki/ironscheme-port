(library (system component-model info)
  (export new
          is?
          info?
          get-default-event
          get-properties
          get-attributes
          get-events
          get-default-property
          info-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ComponentModel.Info a ...)))))
  (define (is? a) (clr-is System.ComponentModel.Info a))
  (define (info? a) (clr-is System.ComponentModel.Info a))
  (define-method-port
    get-default-event
    System.ComponentModel.Info
    GetDefaultEvent
    (System.ComponentModel.EventDescriptor))
  (define-method-port
    get-properties
    System.ComponentModel.Info
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.Attribute[])
    (System.ComponentModel.PropertyDescriptorCollection))
  (define-method-port
    get-attributes
    System.ComponentModel.Info
    GetAttributes
    (System.ComponentModel.AttributeCollection))
  (define-method-port
    get-events
    System.ComponentModel.Info
    GetEvents
    (System.ComponentModel.EventDescriptorCollection System.Attribute[])
    (System.ComponentModel.EventDescriptorCollection))
  (define-method-port
    get-default-property
    System.ComponentModel.Info
    GetDefaultProperty
    (System.ComponentModel.PropertyDescriptor))
  (define-field-port
    info-type
    #f
    #f
    (property:)
    System.ComponentModel.Info
    InfoType
    System.Type))
