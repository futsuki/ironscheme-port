(library (system io pipes anonymous-pipe-server-stream)
  (export new
          is?
          anonymous-pipe-server-stream?
          get-client-handle-as-string
          dispose-local-copy-of-client-handle
          client-safe-pipe-handle
          read-mode
          transmission-mode)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.AnonymousPipeServerStream a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.AnonymousPipeServerStream a))
  (define (anonymous-pipe-server-stream? a)
    (clr-is System.IO.Pipes.AnonymousPipeServerStream a))
  (define-method-port
    get-client-handle-as-string
    System.IO.Pipes.AnonymousPipeServerStream
    GetClientHandleAsString
    (System.String))
  (define-method-port
    dispose-local-copy-of-client-handle
    System.IO.Pipes.AnonymousPipeServerStream
    DisposeLocalCopyOfClientHandle
    (System.Void))
  (define-field-port
    client-safe-pipe-handle
    #f
    #f
    (property:)
    System.IO.Pipes.AnonymousPipeServerStream
    ClientSafePipeHandle
    Microsoft.Win32.SafeHandles.SafePipeHandle)
  (define-field-port
    #f
    read-mode
    #f
    (property:)
    System.IO.Pipes.AnonymousPipeServerStream
    ReadMode
    System.IO.Pipes.PipeTransmissionMode)
  (define-field-port
    transmission-mode
    #f
    #f
    (property:)
    System.IO.Pipes.AnonymousPipeServerStream
    TransmissionMode
    System.IO.Pipes.PipeTransmissionMode))
