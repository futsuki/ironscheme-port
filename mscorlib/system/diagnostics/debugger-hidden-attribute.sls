(library (system diagnostics debugger-hidden-attribute)
  (export new is? debugger-hidden-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DebuggerHiddenAttribute
             a
             ...)))))
  (define (is? a) (clr-is System.Diagnostics.DebuggerHiddenAttribute a))
  (define (debugger-hidden-attribute? a)
    (clr-is System.Diagnostics.DebuggerHiddenAttribute a)))
