(library (system runtime interop-services variant-wrapper)
  (export new is? variant-wrapper? wrapped-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.VariantWrapper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.VariantWrapper a))
  (define (variant-wrapper? a)
    (clr-is System.Runtime.InteropServices.VariantWrapper a))
  (define-field-port
    wrapped-object
    #f
    #f
    (property:)
    System.Runtime.InteropServices.VariantWrapper
    WrappedObject
    System.Object))
