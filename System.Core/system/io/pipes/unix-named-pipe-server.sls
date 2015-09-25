(library (system io pipes unix-named-pipe-server)
  (export new
          is?
          unix-named-pipe-server?
          wait-for-connection
          disconnect
          handle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.UnixNamedPipeServer a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.UnixNamedPipeServer a))
  (define (unix-named-pipe-server? a)
    (clr-is System.IO.Pipes.UnixNamedPipeServer a))
  (define-method-port
    wait-for-connection
    System.IO.Pipes.UnixNamedPipeServer
    WaitForConnection
    (System.Void))
  (define-method-port
    disconnect
    System.IO.Pipes.UnixNamedPipeServer
    Disconnect
    (System.Void))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.UnixNamedPipeServer
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle))
