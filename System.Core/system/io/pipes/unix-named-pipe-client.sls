(library (system io pipes unix-named-pipe-client)
  (export new
          is?
          unix-named-pipe-client?
          connect
          handle
          is-async?
          number-of-server-instances)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.UnixNamedPipeClient a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.UnixNamedPipeClient a))
  (define (unix-named-pipe-client? a)
    (clr-is System.IO.Pipes.UnixNamedPipeClient a))
  (define-method-port
    connect
    System.IO.Pipes.UnixNamedPipeClient
    Connect
    (System.Void System.Int32)
    (System.Void))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.UnixNamedPipeClient
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle)
  (define-field-port
    is-async?
    #f
    #f
    (property:)
    System.IO.Pipes.UnixNamedPipeClient
    IsAsync
    System.Boolean)
  (define-field-port
    number-of-server-instances
    #f
    #f
    (property:)
    System.IO.Pipes.UnixNamedPipeClient
    NumberOfServerInstances
    System.Int32))
