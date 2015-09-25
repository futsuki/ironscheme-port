(library (system runtime interop-services com-conversion-loss-attribute)
  (export new is? com-conversion-loss-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComConversionLossAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.ComConversionLossAttribute
      a))
  (define (com-conversion-loss-attribute? a)
    (clr-is
      System.Runtime.InteropServices.ComConversionLossAttribute
      a)))
