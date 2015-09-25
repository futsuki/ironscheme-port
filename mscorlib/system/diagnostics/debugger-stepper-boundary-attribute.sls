(library (system diagnostics debugger-stepper-boundary-attribute)
  (export new is? debugger-stepper-boundary-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DebuggerStepperBoundaryAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DebuggerStepperBoundaryAttribute a))
  (define (debugger-stepper-boundary-attribute? a)
    (clr-is System.Diagnostics.DebuggerStepperBoundaryAttribute a)))
