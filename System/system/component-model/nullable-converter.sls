(library (system component-model nullable-converter)
  (export new
          is?
          nullable-converter?
          is-valid?
          get-properties
          get-standard-values
          convert-to
          can-convert-to?
          can-convert-from?
          get-create-instance-supported?
          get-standard-values-supported?
          get-properties-supported?
          get-standard-values-exclusive?
          convert-from
          create-instance
          nullable-type
          underlying-type
          underlying-type-converter)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.NullableConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.NullableConverter a))
  (define (nullable-converter? a)
    (clr-is System.ComponentModel.NullableConverter a))
  (define-method-port
    is-valid?
    System.ComponentModel.NullableConverter
    IsValid
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Object))
  (define-method-port
    get-properties
    System.ComponentModel.NullableConverter
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.ComponentModel.ITypeDescriptorContext
      System.Object
      System.Attribute[]))
  (define-method-port
    get-standard-values
    System.ComponentModel.NullableConverter
    GetStandardValues
    (System.ComponentModel.TypeConverter+StandardValuesCollection
      System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-to
    System.ComponentModel.NullableConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.NullableConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.NullableConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    get-create-instance-supported?
    System.ComponentModel.NullableConverter
    GetCreateInstanceSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    get-standard-values-supported?
    System.ComponentModel.NullableConverter
    GetStandardValuesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    get-properties-supported?
    System.ComponentModel.NullableConverter
    GetPropertiesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    get-standard-values-exclusive?
    System.ComponentModel.NullableConverter
    GetStandardValuesExclusive
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-from
    System.ComponentModel.NullableConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object))
  (define-method-port
    create-instance
    System.ComponentModel.NullableConverter
    CreateInstance
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Collections.IDictionary))
  (define-field-port
    nullable-type
    #f
    #f
    (property:)
    System.ComponentModel.NullableConverter
    NullableType
    System.Type)
  (define-field-port
    underlying-type
    #f
    #f
    (property:)
    System.ComponentModel.NullableConverter
    UnderlyingType
    System.Type)
  (define-field-port
    underlying-type-converter
    #f
    #f
    (property:)
    System.ComponentModel.NullableConverter
    UnderlyingTypeConverter
    System.ComponentModel.TypeConverter))
