(library (system diagnostics debugger-non-user-code-attribute)
  (export new is? debugger-non-user-code-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DebuggerNonUserCodeAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DebuggerNonUserCodeAttribute a))
  (define (debugger-non-user-code-attribute? a)
    (clr-is System.Diagnostics.DebuggerNonUserCodeAttribute a)))
