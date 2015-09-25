(library (system io pipes named-pipe-client-stream)
  (export new
          is?
          named-pipe-client-stream?
          connect
          number-of-server-instances)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.NamedPipeClientStream a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.NamedPipeClientStream a))
  (define (named-pipe-client-stream? a)
    (clr-is System.IO.Pipes.NamedPipeClientStream a))
  (define-method-port
    connect
    System.IO.Pipes.NamedPipeClientStream
    Connect
    (System.Void System.Int32)
    (System.Void))
  (define-field-port
    number-of-server-instances
    #f
    #f
    (property:)
    System.IO.Pipes.NamedPipeClientStream
    NumberOfServerInstances
    System.Int32))
