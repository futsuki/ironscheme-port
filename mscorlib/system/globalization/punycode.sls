(library (system globalization punycode)
  (export new is? punycode?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Globalization.Punycode a ...)))))
  (define (is? a) (clr-is System.Globalization.Punycode a))
  (define (punycode? a) (clr-is System.Globalization.Punycode a)))
