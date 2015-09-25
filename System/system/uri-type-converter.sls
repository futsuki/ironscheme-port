(library (system uri-type-converter)
  (export new
          is?
          uri-type-converter?
          is-valid?
          convert-to
          can-convert-to?
          can-convert-from?
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.UriTypeConverter a ...)))))
  (define (is? a) (clr-is System.UriTypeConverter a))
  (define (uri-type-converter? a) (clr-is System.UriTypeConverter a))
  (define-method-port
    is-valid?
    System.UriTypeConverter
    IsValid
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Object))
  (define-method-port
    convert-to
    System.UriTypeConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.UriTypeConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.UriTypeConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    convert-from
    System.UriTypeConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
