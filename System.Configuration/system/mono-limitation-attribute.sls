(library (system mono-limitation-attribute)
  (export new is? mono-limitation-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MonoLimitationAttribute a ...)))))
  (define (is? a) (clr-is System.MonoLimitationAttribute a))
  (define (mono-limitation-attribute? a)
    (clr-is System.MonoLimitationAttribute a)))
