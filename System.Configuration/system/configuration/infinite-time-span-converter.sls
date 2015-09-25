(library (system configuration infinite-time-span-converter)
  (export new is? infinite-time-span-converter? convert-to convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.InfiniteTimeSpanConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.InfiniteTimeSpanConverter a))
  (define (infinite-time-span-converter? a)
    (clr-is System.Configuration.InfiniteTimeSpanConverter a))
  (define-method-port
    convert-to
    System.Configuration.InfiniteTimeSpanConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.InfiniteTimeSpanConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
