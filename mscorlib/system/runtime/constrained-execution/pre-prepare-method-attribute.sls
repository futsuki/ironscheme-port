(library (system
          runtime
          constrained-execution
          pre-prepare-method-attribute)
  (export new is? pre-prepare-method-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute
      a))
  (define (pre-prepare-method-attribute? a)
    (clr-is
      System.Runtime.ConstrainedExecution.PrePrepareMethodAttribute
      a)))
