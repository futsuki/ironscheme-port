(library (system component-model reference-converter)
  (export new
          is?
          reference-converter?
          get-standard-values
          convert-to
          can-convert-from?
          get-standard-values-supported?
          get-standard-values-exclusive?
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.ReferenceConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.ReferenceConverter a))
  (define (reference-converter? a)
    (clr-is System.ComponentModel.ReferenceConverter a))
  (define-method-port
    get-standard-values
    System.ComponentModel.ReferenceConverter
    GetStandardValues
    (System.ComponentModel.TypeConverter+StandardValuesCollection
      System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-to
    System.ComponentModel.ReferenceConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.ReferenceConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    get-standard-values-supported?
    System.ComponentModel.ReferenceConverter
    GetStandardValuesSupported
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    get-standard-values-exclusive?
    System.ComponentModel.ReferenceConverter
    GetStandardValuesExclusive
    (System.Boolean System.ComponentModel.ITypeDescriptorContext))
  (define-method-port
    convert-from
    System.ComponentModel.ReferenceConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
