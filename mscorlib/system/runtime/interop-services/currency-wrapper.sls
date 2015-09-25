(library (system runtime interop-services currency-wrapper)
  (export new is? currency-wrapper? wrapped-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.CurrencyWrapper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.CurrencyWrapper a))
  (define (currency-wrapper? a)
    (clr-is System.Runtime.InteropServices.CurrencyWrapper a))
  (define-field-port
    wrapped-object
    #f
    #f
    (property:)
    System.Runtime.InteropServices.CurrencyWrapper
    WrappedObject
    System.Decimal))
