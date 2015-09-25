(library (system component-model type-converter)
  (export new
          is?
          type-converter?
          convert-from-invariant-string
          is-valid?
          convert-from-string
          get-properties
          get-standard-values
          convert-to
          can-convert-to?
          convert-to-string
          can-convert-from?
          get-create-instance-supported?
          get-standard-values-supported?
          get-properties-supported?
          get-standard-values-exclusive?
          convert-from
          convert-to-invariant-string
          create-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.TypeConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.TypeConverter a))
  (define (type-converter? a)
    (clr-is System.ComponentModel.TypeConverter a))
  (define-method-port
    convert-from-invariant-string
    System.ComponentModel.TypeConverter
    ConvertFromInvariantString
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.String)
    (System.Object System.String))
  (define-method-port
    is-valid?
    System.ComponentModel.TypeConverter
    IsValid
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Object)
    (System.Boolean System.Object))
  (define-method-port
    convert-from-string
    System.ComponentModel.TypeConverter
    ConvertFromString
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.String)
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.String)
    (System.Object System.String))
  (define-method-port
    get-properties
    System.ComponentModel.TypeConverter
    GetProperties
    (System.ComponentModel.PropertyDescriptorCollection
      System.ComponentModel.ITypeDescriptorContext
      System.Object
      System.Attribute[])
    (System.ComponentModel.PropertyDescriptorCollection
      System.ComponentModel.ITypeDescriptorContext
      System.Object)
    (System.ComponentModel.PropertyDescriptorCollection System.Object))
  (define-method-port
    get-standard-values
    System.ComponentModel.TypeConverter
    GetStandardValues
    (System.ComponentModel.TypeConverter+StandardValuesCollection
      System.ComponentModel.ITypeDescriptorContext)
    (System.Collections.ICollection))
  (define-method-port
    convert-to
    System.ComponentModel.TypeConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type)
    (System.Object System.Object System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.TypeConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)
    (System.Boolean System.Type))
  (define-method-port
    convert-to-string
    System.ComponentModel.TypeConverter
    ConvertToString
    (System.String
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)
    (System.String
      System.ComponentModel.ITypeDescriptorContext
      System.Object)
    (System.String System.Object))
  (define-method-port
    can-convert-from?
    System.ComponentModel.TypeConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type)
    (System.Boolean System.Type))
  (define-method-port
    get-create-instance-supported?
    System.ComponentModel.TypeConverter
    GetCreateInstanceSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)
    (System.Boolean))
  (define-method-port
    get-standard-values-supported?
    System.ComponentModel.TypeConverter
    GetStandardValuesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)
    (System.Boolean))
  (define-method-port
    get-properties-supported?
    System.ComponentModel.TypeConverter
    GetPropertiesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)
    (System.Boolean))
  (define-method-port
    get-standard-values-exclusive?
    System.ComponentModel.TypeConverter
    GetStandardValuesExclusive
    (System.Boolean System.ComponentModel.ITypeDescriptorContext)
    (System.Boolean))
  (define-method-port
    convert-from
    System.ComponentModel.TypeConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)
    (System.Object System.Object))
  (define-method-port
    convert-to-invariant-string
    System.ComponentModel.TypeConverter
    ConvertToInvariantString
    (System.String
      System.ComponentModel.ITypeDescriptorContext
      System.Object)
    (System.String System.Object))
  (define-method-port
    create-instance
    System.ComponentModel.TypeConverter
    CreateInstance
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Collections.IDictionary)
    (System.Object System.Collections.IDictionary)))
