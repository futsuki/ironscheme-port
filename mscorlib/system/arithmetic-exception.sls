(library (system arithmetic-exception)
  (export new is? arithmetic-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ArithmeticException a ...)))))
  (define (is? a) (clr-is System.ArithmeticException a))
  (define (arithmetic-exception? a)
    (clr-is System.ArithmeticException a)))