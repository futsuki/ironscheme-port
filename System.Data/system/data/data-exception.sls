(library (system data data-exception)
  (export new is? data-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.DataException a ...)))))
  (define (is? a) (clr-is System.Data.DataException a))
  (define (data-exception? a) (clr-is System.Data.DataException a)))
