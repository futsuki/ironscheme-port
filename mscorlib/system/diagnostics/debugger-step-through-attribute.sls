(library (system diagnostics debugger-step-through-attribute)
  (export new is? debugger-step-through-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DebuggerStepThroughAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DebuggerStepThroughAttribute a))
  (define (debugger-step-through-attribute? a)
    (clr-is System.Diagnostics.DebuggerStepThroughAttribute a)))
