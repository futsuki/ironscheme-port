(library (system component-model boolean-converter)
  (export new
          is?
          boolean-converter?
          get-standard-values
          can-convert-from?
          get-standard-values-supported?
          get-standard-values-exclusive?
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.BooleanConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.BooleanConverter a))
  (define (boolean-converter? a)
    (clr-is System.ComponentModel.BooleanConverter a))
  (define-method-port
    get-standard-values
    System.ComponentModel.BooleanConverter
    GetStandardValues
    (System.ComponentModel.TypeConverter+StandardValuesCollection
      System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    can-convert-from?
    System.ComponentModel.BooleanConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    get-standard-values-supported?
    System.ComponentModel.BooleanConverter
    GetStandardValuesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    get-standard-values-exclusive?
    System.ComponentModel.BooleanConverter
    GetStandardValuesExclusive
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-from
    System.ComponentModel.BooleanConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
