(library (system reflection target-invocation-exception)
  (export new is? target-invocation-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Reflection.TargetInvocationException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Reflection.TargetInvocationException a))
  (define (target-invocation-exception? a)
    (clr-is System.Reflection.TargetInvocationException a)))
