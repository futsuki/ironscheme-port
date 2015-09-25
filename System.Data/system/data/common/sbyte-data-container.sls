(library (system data common sbyte-data-container)
  (export new is? sbyte-data-container?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.SByteDataContainer a ...)))))
  (define (is? a) (clr-is System.Data.Common.SByteDataContainer a))
  (define (sbyte-data-container? a)
    (clr-is System.Data.Common.SByteDataContainer a)))
