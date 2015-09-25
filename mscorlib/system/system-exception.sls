(library (system system-exception)
  (export new is? system-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.SystemException a ...)))))
  (define (is? a) (clr-is System.SystemException a))
  (define (system-exception? a) (clr-is System.SystemException a)))
