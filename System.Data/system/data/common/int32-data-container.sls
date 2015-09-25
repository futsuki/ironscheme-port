(library (system data common int32-data-container)
  (export new is? int32-data-container?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.Int32DataContainer a ...)))))
  (define (is? a) (clr-is System.Data.Common.Int32DataContainer a))
  (define (int32-data-container? a)
    (clr-is System.Data.Common.Int32DataContainer a)))
