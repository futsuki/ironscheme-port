(library (system io pipes win32-anonymous-pipe-server)
  (export new
          is?
          win32-anonymous-pipe-server?
          dispose-local-copy-of-client-handle
          handle
          client-handle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.Win32AnonymousPipeServer a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.Win32AnonymousPipeServer a))
  (define (win32-anonymous-pipe-server? a)
    (clr-is System.IO.Pipes.Win32AnonymousPipeServer a))
  (define-method-port
    dispose-local-copy-of-client-handle
    System.IO.Pipes.Win32AnonymousPipeServer
    DisposeLocalCopyOfClientHandle
    (System.Void))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.Win32AnonymousPipeServer
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle)
  (define-field-port
    client-handle
    #f
    #f
    (property:)
    System.IO.Pipes.Win32AnonymousPipeServer
    ClientHandle
    Microsoft.Win32.SafeHandles.SafePipeHandle))
