(library (system io pipes anonymous-pipe-client-stream)
  (export new
          is?
          anonymous-pipe-client-stream?
          read-mode
          transmission-mode)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.Pipes.AnonymousPipeClientStream a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.AnonymousPipeClientStream a))
  (define (anonymous-pipe-client-stream? a)
    (clr-is System.IO.Pipes.AnonymousPipeClientStream a))
  (define-field-port
    #f
    read-mode
    #f
    (property:)
    System.IO.Pipes.AnonymousPipeClientStream
    ReadMode
    System.IO.Pipes.PipeTransmissionMode)
  (define-field-port
    transmission-mode
    #f
    #f
    (property:)
    System.IO.Pipes.AnonymousPipeClientStream
    TransmissionMode
    System.IO.Pipes.PipeTransmissionMode))
