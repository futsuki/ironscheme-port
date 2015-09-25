(library (system timeout-exception)
  (export new is? timeout-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.TimeoutException a ...)))))
  (define (is? a) (clr-is System.TimeoutException a))
  (define (timeout-exception? a) (clr-is System.TimeoutException a)))
