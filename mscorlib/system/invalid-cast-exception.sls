(library (system invalid-cast-exception)
  (export new is? invalid-cast-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.InvalidCastException a ...)))))
  (define (is? a) (clr-is System.InvalidCastException a))
  (define (invalid-cast-exception? a)
    (clr-is System.InvalidCastException a)))