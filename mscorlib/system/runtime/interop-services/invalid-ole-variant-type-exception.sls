(library (system
          runtime
          interop-services
          invalid-ole-variant-type-exception)
  (export new is? invalid-ole-variant-type-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.InvalidOleVariantTypeException
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.InvalidOleVariantTypeException
      a))
  (define (invalid-ole-variant-type-exception? a)
    (clr-is
      System.Runtime.InteropServices.InvalidOleVariantTypeException
      a)))
