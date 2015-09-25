(library (system io pipes unix-anonymous-pipe-server)
  (export new
          is?
          unix-anonymous-pipe-server?
          dispose-local-copy-of-client-handle
          handle
          client-handle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.UnixAnonymousPipeServer a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.UnixAnonymousPipeServer a))
  (define (unix-anonymous-pipe-server? a)
    (clr-is System.IO.Pipes.UnixAnonymousPipeServer a))
  (define-method-port
    dispose-local-copy-of-client-handle
    System.IO.Pipes.UnixAnonymousPipeServer
    DisposeLocalCopyOfClientHandle
    (System.Void))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.UnixAnonymousPipeServer
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle)
  (define-field-port
    client-handle
    #f
    #f
    (property:)
    System.IO.Pipes.UnixAnonymousPipeServer
    ClientHandle
    Microsoft.Win32.SafeHandles.SafePipeHandle))
