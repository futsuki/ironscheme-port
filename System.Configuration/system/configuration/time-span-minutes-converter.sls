(library (system configuration time-span-minutes-converter)
  (export new is? time-span-minutes-converter? convert-to convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.TimeSpanMinutesConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.TimeSpanMinutesConverter a))
  (define (time-span-minutes-converter? a)
    (clr-is System.Configuration.TimeSpanMinutesConverter a))
  (define-method-port
    convert-to
    System.Configuration.TimeSpanMinutesConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.TimeSpanMinutesConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
