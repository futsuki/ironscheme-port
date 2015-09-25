(library (system data common bit-data-container)
  (export new is? bit-data-container?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.BitDataContainer a ...)))))
  (define (is? a) (clr-is System.Data.Common.BitDataContainer a))
  (define (bit-data-container? a)
    (clr-is System.Data.Common.BitDataContainer a)))