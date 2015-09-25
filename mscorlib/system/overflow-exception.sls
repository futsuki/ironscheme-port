(library (system overflow-exception)
  (export new is? overflow-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.OverflowException a ...)))))
  (define (is? a) (clr-is System.OverflowException a))
  (define (overflow-exception? a) (clr-is System.OverflowException a)))
