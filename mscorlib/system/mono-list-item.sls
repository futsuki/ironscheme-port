(library (system mono-list-item)
  (export new is? mono-list-item?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MonoListItem a ...)))))
  (define (is? a) (clr-is System.MonoListItem a))
  (define (mono-list-item? a) (clr-is System.MonoListItem a)))
