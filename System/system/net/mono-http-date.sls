(library (system net mono-http-date)
  (export new is? mono-http-date?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.MonoHttpDate a ...)))))
  (define (is? a) (clr-is System.Net.MonoHttpDate a))
  (define (mono-http-date? a) (clr-is System.Net.MonoHttpDate a)))
