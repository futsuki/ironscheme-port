(library (system data missing-primary-key-exception)
  (export new is? missing-primary-key-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.MissingPrimaryKeyException a ...)))))
  (define (is? a) (clr-is System.Data.MissingPrimaryKeyException a))
  (define (missing-primary-key-exception? a)
    (clr-is System.Data.MissingPrimaryKeyException a)))