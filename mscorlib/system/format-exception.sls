(library (system format-exception)
  (export new is? format-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.FormatException a ...)))))
  (define (is? a) (clr-is System.FormatException a))
  (define (format-exception? a) (clr-is System.FormatException a)))
