(library (system data common int16-data-container)
  (export new is? int16-data-container?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.Int16DataContainer a ...)))))
  (define (is? a) (clr-is System.Data.Common.Int16DataContainer a))
  (define (int16-data-container? a)
    (clr-is System.Data.Common.Int16DataContainer a)))
