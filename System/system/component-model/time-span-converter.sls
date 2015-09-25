(library (system component-model time-span-converter)
  (export new
          is?
          time-span-converter?
          convert-to
          can-convert-to?
          can-convert-from?
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.TimeSpanConverter a ...)))))
  (define (is? a) (clr-is System.ComponentModel.TimeSpanConverter a))
  (define (time-span-converter? a)
    (clr-is System.ComponentModel.TimeSpanConverter a))
  (define-method-port
    convert-to
    System.ComponentModel.TimeSpanConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    can-convert-to?
    System.ComponentModel.TimeSpanConverter
    CanConvertTo
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    can-convert-from?
    System.ComponentModel.TimeSpanConverter
    CanConvertFrom
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-method-port
    convert-from
    System.ComponentModel.TimeSpanConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
