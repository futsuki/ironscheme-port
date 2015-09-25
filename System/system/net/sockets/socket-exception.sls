(library (system net sockets socket-exception)
  (export new
          is?
          socket-exception?
          error-code
          socket-error-code
          message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Sockets.SocketException a ...)))))
  (define (is? a) (clr-is System.Net.Sockets.SocketException a))
  (define (socket-exception? a)
    (clr-is System.Net.Sockets.SocketException a))
  (define-field-port
    error-code
    #f
    #f
    (property:)
    System.Net.Sockets.SocketException
    ErrorCode
    System.Int32)
  (define-field-port
    socket-error-code
    #f
    #f
    (property:)
    System.Net.Sockets.SocketException
    SocketErrorCode
    System.Net.Sockets.SocketError)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Net.Sockets.SocketException
    Message
    System.String))
