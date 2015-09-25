(library (system io pipes unix-anonymous-pipe-client)
  (export new is? unix-anonymous-pipe-client? handle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.UnixAnonymousPipeClient a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.UnixAnonymousPipeClient a))
  (define (unix-anonymous-pipe-client? a)
    (clr-is System.IO.Pipes.UnixAnonymousPipeClient a))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.UnixAnonymousPipeClient
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle))
