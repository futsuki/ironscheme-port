(library (system method-access-exception)
  (export new is? method-access-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.MethodAccessException a ...)))))
  (define (is? a) (clr-is System.MethodAccessException a))
  (define (method-access-exception? a)
    (clr-is System.MethodAccessException a)))