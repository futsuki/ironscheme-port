(library (system diagnostics debugger-browsable-attribute)
  (export new is? debugger-browsable-attribute? state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DebuggerBrowsableAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DebuggerBrowsableAttribute a))
  (define (debugger-browsable-attribute? a)
    (clr-is System.Diagnostics.DebuggerBrowsableAttribute a))
  (define-field-port
    state
    #f
    #f
    (property:)
    System.Diagnostics.DebuggerBrowsableAttribute
    State
    System.Diagnostics.DebuggerBrowsableState))
