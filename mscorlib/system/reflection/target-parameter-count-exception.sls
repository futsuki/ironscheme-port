(library (system reflection target-parameter-count-exception)
  (export new is? target-parameter-count-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.TargetParameterCountException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.TargetParameterCountException a))
  (define (target-parameter-count-exception? a)
    (clr-is System.Reflection.TargetParameterCountException a)))
