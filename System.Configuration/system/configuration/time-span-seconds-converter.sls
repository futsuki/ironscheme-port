(library (system configuration time-span-seconds-converter)
  (export new is? time-span-seconds-converter? convert-to convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.TimeSpanSecondsConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.TimeSpanSecondsConverter a))
  (define (time-span-seconds-converter? a)
    (clr-is System.Configuration.TimeSpanSecondsConverter a))
  (define-method-port
    convert-to
    System.Configuration.TimeSpanSecondsConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.TimeSpanSecondsConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
