(library (system access-violation-exception)
  (export new is? access-violation-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.AccessViolationException a ...)))))
  (define (is? a) (clr-is System.AccessViolationException a))
  (define (access-violation-exception? a)
    (clr-is System.AccessViolationException a)))
