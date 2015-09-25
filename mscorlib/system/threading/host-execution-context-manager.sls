(library (system threading host-execution-context-manager)
  (export new
          is?
          host-execution-context-manager?
          revert
          capture
          set-host-execution-context)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Threading.HostExecutionContextManager
             a
             ...)))))
  (define (is? a)
    (clr-is System.Threading.HostExecutionContextManager a))
  (define (host-execution-context-manager? a)
    (clr-is System.Threading.HostExecutionContextManager a))
  (define-method-port
    revert
    System.Threading.HostExecutionContextManager
    Revert
    (System.Void System.Object))
  (define-method-port
    capture
    System.Threading.HostExecutionContextManager
    Capture
    (System.Threading.HostExecutionContext))
  (define-method-port
    set-host-execution-context
    System.Threading.HostExecutionContextManager
    SetHostExecutionContext
    (System.Object System.Threading.HostExecutionContext)))
