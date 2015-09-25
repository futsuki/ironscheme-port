(library (system component-model type-list-converter)
  (export is?
          type-list-converter?
          get-standard-values
          convert-to
          can-convert-to?
          can-convert-from?
          get-standard-values-supported?
          get-standard-values-exclusive?
          convert-from)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.TypeListConverter a))
  (define (type-list-converter? a)
    (clr-is System.ComponentModel.TypeListConverter a))
  (define-method-port
    get-standard-values
    System.ComponentModel.TypeListConverter
    GetStandardValues
    (System.ComponentModel.TypeConverter+StandardValuesCollection
      System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-to
    System.ComponentModel.TypeListConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.TypeListConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.TypeListConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    get-standard-values-supported?
    System.ComponentModel.TypeListConverter
    GetStandardValuesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    get-standard-values-exclusive?
    System.ComponentModel.TypeListConverter
    GetStandardValuesExclusive
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-from
    System.ComponentModel.TypeListConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
