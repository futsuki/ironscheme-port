(library (system argument-null-exception)
  (export new is? argument-null-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ArgumentNullException a ...)))))
  (define (is? a) (clr-is System.ArgumentNullException a))
  (define (argument-null-exception? a)
    (clr-is System.ArgumentNullException a)))
