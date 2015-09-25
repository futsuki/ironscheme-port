(library (system io pipes win32-named-pipe-client)
  (export new
          is?
          win32-named-pipe-client?
          connect
          handle
          is-async?
          number-of-server-instances)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.Win32NamedPipeClient a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.Win32NamedPipeClient a))
  (define (win32-named-pipe-client? a)
    (clr-is System.IO.Pipes.Win32NamedPipeClient a))
  (define-method-port
    connect
    System.IO.Pipes.Win32NamedPipeClient
    Connect
    (System.Void System.Int32)
    (System.Void))
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.Pipes.Win32NamedPipeClient
    Handle
    Microsoft.Win32.SafeHandles.SafePipeHandle)
  (define-field-port
    is-async?
    #f
    #f
    (property:)
    System.IO.Pipes.Win32NamedPipeClient
    IsAsync
    System.Boolean)
  (define-field-port
    number-of-server-instances
    #f
    #f
    (property:)
    System.IO.Pipes.Win32NamedPipeClient
    NumberOfServerInstances
    System.Int32))
