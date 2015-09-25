(library (system component-model culture-info-converter)
  (export new
          is?
          culture-info-converter?
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
         #'(clr-new
             System.ComponentModel.CultureInfoConverter
             a
             ...)))))
  (define (is? a) (clr-is System.ComponentModel.CultureInfoConverter a))
  (define (culture-info-converter? a)
    (clr-is System.ComponentModel.CultureInfoConverter a))
  (define-method-port
    get-standard-values
    System.ComponentModel.CultureInfoConverter
    GetStandardValues
    (System.ComponentModel.TypeConverter+StandardValuesCollection
      System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-to
    System.ComponentModel.CultureInfoConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.CultureInfoConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.CultureInfoConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    get-standard-values-supported?
    System.ComponentModel.CultureInfoConverter
    GetStandardValuesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    get-standard-values-exclusive?
    System.ComponentModel.CultureInfoConverter
    GetStandardValuesExclusive
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-from
    System.ComponentModel.CultureInfoConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
