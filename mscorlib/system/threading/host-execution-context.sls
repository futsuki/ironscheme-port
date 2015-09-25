(library (system threading host-execution-context)
  (export new is? host-execution-context? create-copy)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.HostExecutionContext a ...)))))
  (define (is? a) (clr-is System.Threading.HostExecutionContext a))
  (define (host-execution-context? a)
    (clr-is System.Threading.HostExecutionContext a))
  (define-method-port
    create-copy
    System.Threading.HostExecutionContext
    CreateCopy
    (System.Threading.HostExecutionContext)))
