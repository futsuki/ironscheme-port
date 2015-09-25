(library (system io pipes named-pipe-server-stream)
  (export new
          is?
          named-pipe-server-stream?
          get-impersonation-user-name
          begin-wait-for-connection
          wait-for-connection
          run-as-client
          end-wait-for-connection
          disconnect
          max-allowed-server-instances)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.NamedPipeServerStream a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.NamedPipeServerStream a))
  (define (named-pipe-server-stream? a)
    (clr-is System.IO.Pipes.NamedPipeServerStream a))
  (define-method-port
    get-impersonation-user-name
    System.IO.Pipes.NamedPipeServerStream
    GetImpersonationUserName
    (System.String))
  (define-method-port
    begin-wait-for-connection
    System.IO.Pipes.NamedPipeServerStream
    BeginWaitForConnection
    (System.IAsyncResult System.AsyncCallback System.Object))
  (define-method-port
    wait-for-connection
    System.IO.Pipes.NamedPipeServerStream
    WaitForConnection
    (System.Void))
  (define-method-port
    run-as-client
    System.IO.Pipes.NamedPipeServerStream
    RunAsClient
    (System.Void System.IO.Pipes.PipeStreamImpersonationWorker))
  (define-method-port
    end-wait-for-connection
    System.IO.Pipes.NamedPipeServerStream
    EndWaitForConnection
    (System.Void System.IAsyncResult))
  (define-method-port
    disconnect
    System.IO.Pipes.NamedPipeServerStream
    Disconnect
    (System.Void))
  (define-field-port
    max-allowed-server-instances
    #f
    #f
    (static:)
    System.IO.Pipes.NamedPipeServerStream
    MaxAllowedServerInstances
    System.Int32))
