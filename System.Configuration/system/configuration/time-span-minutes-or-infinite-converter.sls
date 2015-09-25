(library (system configuration time-span-minutes-or-infinite-converter)
  (export new
          is?
          time-span-minutes-or-infinite-converter?
          convert-to
          convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.TimeSpanMinutesOrInfiniteConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.TimeSpanMinutesOrInfiniteConverter a))
  (define (time-span-minutes-or-infinite-converter? a)
    (clr-is System.Configuration.TimeSpanMinutesOrInfiniteConverter a))
  (define-method-port
    convert-to
    System.Configuration.TimeSpanMinutesOrInfiniteConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.TimeSpanMinutesOrInfiniteConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
