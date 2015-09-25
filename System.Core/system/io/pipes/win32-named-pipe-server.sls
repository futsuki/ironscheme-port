(library (system io pipes win32-named-pipe-server)
  (export new
          is?
          win32-named-pipe-server?
          wait-for-connection
          disconnect
          handle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.Win32NamedPipeServer a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.Win32NamedPipeServer a))
  (define (win32-named-pipe-server? a)
    (clr-is System.IO.Pipes.Win32NamedPipeServer a))
  (define-method-port
    wait-for-connection
    System.IO.Pipes.Win32NamedPipeServer
    WaitForConnection
    (System.Void))
  (define-method-port
    disconnect
    System.IO.Pipes.Win32NamedPipeServer
    Disconnect
    (System.Void))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.Win32NamedPipeServer
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle))
