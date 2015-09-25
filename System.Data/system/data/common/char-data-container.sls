(library (system data common char-data-container)
  (export new is? char-data-container?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.CharDataContainer a ...)))))
  (define (is? a) (clr-is System.Data.Common.CharDataContainer a))
  (define (char-data-container? a)
    (clr-is System.Data.Common.CharDataContainer a)))
