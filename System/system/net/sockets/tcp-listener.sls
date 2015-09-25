(library (system net sockets tcp-listener)
  (export new
          is?
          tcp-listener?
          end-accept-tcp-client
          pending?
          accept-socket
          begin-accept-tcp-client
          begin-accept-socket
          stop
          end-accept-socket
          start
          accept-tcp-client
          local-endpoint
          server
          exclusive-address-use?-get
          exclusive-address-use?-set!
          exclusive-address-use?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Sockets.TcpListener a ...)))))
  (define (is? a) (clr-is System.Net.Sockets.TcpListener a))
  (define (tcp-listener? a) (clr-is System.Net.Sockets.TcpListener a))
  (define-method-port
    end-accept-tcp-client
    System.Net.Sockets.TcpListener
    EndAcceptTcpClient
    (System.Net.Sockets.TcpClient System.IAsyncResult))
  (define-method-port
    pending?
    System.Net.Sockets.TcpListener
    Pending
    (System.Boolean))
  (define-method-port
    accept-socket
    System.Net.Sockets.TcpListener
    AcceptSocket
    (System.Net.Sockets.Socket))
  (define-method-port
    begin-accept-tcp-client
    System.Net.Sockets.TcpListener
    BeginAcceptTcpClient
    (System.IAsyncResult System.AsyncCallback System.Object))
  (define-method-port
    begin-accept-socket
    System.Net.Sockets.TcpListener
    BeginAcceptSocket
    (System.IAsyncResult System.AsyncCallback System.Object))
  (define-method-port
    stop
    System.Net.Sockets.TcpListener
    Stop
    (System.Void))
  (define-method-port
    end-accept-socket
    System.Net.Sockets.TcpListener
    EndAcceptSocket
    (System.Net.Sockets.Socket System.IAsyncResult))
  (define-method-port
    start
    System.Net.Sockets.TcpListener
    Start
    (System.Void System.Int32)
    (System.Void))
  (define-method-port
    accept-tcp-client
    System.Net.Sockets.TcpListener
    AcceptTcpClient
    (System.Net.Sockets.TcpClient))
  (define-field-port
    local-endpoint
    #f
    #f
    (property:)
    System.Net.Sockets.TcpListener
    LocalEndpoint
    System.Net.EndPoint)
  (define-field-port
    server
    #f
    #f
    (property:)
    System.Net.Sockets.TcpListener
    Server
    System.Net.Sockets.Socket)
  (define-field-port
    exclusive-address-use?-get
    exclusive-address-use?-set!
    exclusive-address-use?-update!
    (property:)
    System.Net.Sockets.TcpListener
    ExclusiveAddressUse
    System.Boolean))
