(library (system mono-custom-attrs)
  (export new is? mono-custom-attrs?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MonoCustomAttrs a ...)))))
  (define (is? a) (clr-is System.MonoCustomAttrs a))
  (define (mono-custom-attrs? a) (clr-is System.MonoCustomAttrs a)))
