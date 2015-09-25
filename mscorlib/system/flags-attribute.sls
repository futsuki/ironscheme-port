(library (system flags-attribute)
  (export new is? flags-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.FlagsAttribute a ...)))))
  (define (is? a) (clr-is System.FlagsAttribute a))
  (define (flags-attribute? a) (clr-is System.FlagsAttribute a)))
