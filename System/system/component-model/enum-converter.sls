(library (system component-model enum-converter)
  (export new
          is?
          enum-converter?
          is-valid?
          get-standard-values
          convert-to
          can-convert-to?
          can-convert-from?
          get-standard-values-supported?
          get-standard-values-exclusive?
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.EnumConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.EnumConverter a))
  (define (enum-converter? a)
    (clr-is System.ComponentModel.EnumConverter a))
  (define-method-port
    is-valid?
    System.ComponentModel.EnumConverter
    IsValid
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Object))
  (define-method-port
    get-standard-values
    System.ComponentModel.EnumConverter
    GetStandardValues
    (System.ComponentModel.TypeConverter+StandardValuesCollection
      System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-to
    System.ComponentModel.EnumConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.EnumConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.EnumConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    get-standard-values-supported?
    System.ComponentModel.EnumConverter
    GetStandardValuesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    get-standard-values-exclusive?
    System.ComponentModel.EnumConverter
    GetStandardValuesExclusive
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-from
    System.ComponentModel.EnumConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
