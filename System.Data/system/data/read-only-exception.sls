(library (system data read-only-exception)
  (export new is? read-only-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.ReadOnlyException a ...)))))
  (define (is? a) (clr-is System.Data.ReadOnlyException a))
  (define (read-only-exception? a)
    (clr-is System.Data.ReadOnlyException a)))
