(library (system configuration infinite-int-converter)
  (export new is? infinite-int-converter? convert-to convert-from)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.InfiniteIntConverter a ...)))))
  (define (is? a) (clr-is System.Configuration.InfiniteIntConverter a))
  (define (infinite-int-converter? a)
    (clr-is System.Configuration.InfiniteIntConverter a))
  (define-method-port
    convert-to
    System.Configuration.InfiniteIntConverter
    ConvertTo
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object
      System.Type))
  (define-method-port
    convert-from
    System.Configuration.InfiniteIntConverter
    ConvertFrom
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Globalization.CultureInfo
      System.Object)))
