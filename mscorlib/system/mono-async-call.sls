(library (system mono-async-call)
  (export new is? mono-async-call?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MonoAsyncCall a ...)))))
  (define (is? a) (clr-is System.MonoAsyncCall a))
  (define (mono-async-call? a) (clr-is System.MonoAsyncCall a)))
