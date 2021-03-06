(library (system reflection target-exception)
  (export new is? target-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Reflection.TargetException a ...)))))
  (define (is? a) (clr-is System.Reflection.TargetException a))
  (define (target-exception? a)
    (clr-is System.Reflection.TargetException a)))
