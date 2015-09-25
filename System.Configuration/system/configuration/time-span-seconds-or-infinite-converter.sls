(library (system configuration time-span-seconds-or-infinite-converter)
  (export new
          is?
          time-span-seconds-or-infinite-converter?
          convert-to
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.TimeSpanSecondsOrInfiniteConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.TimeSpanSecondsOrInfiniteConverter a))
  (define (time-span-seconds-or-infinite-converter? a)
    (clr-is System.Configuration.TimeSpanSecondsOrInfiniteConverter a))
  (define-method-port
    convert-to
    System.Configuration.TimeSpanSecondsOrInfiniteConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.TimeSpanSecondsOrInfiniteConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
