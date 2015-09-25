(library (system component-model date-time-converter)
  (export new
          is?
          date-time-converter?
          convert-to
          can-convert-to?
          can-convert-from?
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.DateTimeConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.DateTimeConverter a))
  (define (date-time-converter? a)
    (clr-is System.ComponentModel.DateTimeConverter a))
  (define-method-port
    convert-to
    System.ComponentModel.DateTimeConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.DateTimeConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.DateTimeConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    convert-from
    System.ComponentModel.DateTimeConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
