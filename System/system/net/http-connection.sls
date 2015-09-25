(library (system net http-connection)
  (export new
          is?
          http-connection?
          get-response-stream
          begin-read-request
          get-request-stream
          send-error
          close
          chunked-uses
          local-end-point
          remote-end-point
          is-secure?
          prefix-get
          prefix-set!
          prefix-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.HttpConnection a ...)))))
  (define (is? a) (clr-is System.Net.HttpConnection a))
  (define (http-connection? a) (clr-is System.Net.HttpConnection a))
  (define-method-port
    get-response-stream
    System.Net.HttpConnection
    GetResponseStream
    (System.Net.ResponseStream))
  (define-method-port
    begin-read-request
    System.Net.HttpConnection
    BeginReadRequest
    (System.Void))
  (define-method-port
    get-request-stream
    System.Net.HttpConnection
    GetRequestStream
    (System.Net.RequestStream System.Boolean System.Int64))
  (define-method-port
    send-error
    System.Net.HttpConnection
    SendError
    (System.Void)
    (System.Void System.String System.Int32))
  (define-method-port
    close
    System.Net.HttpConnection
    Close
    (System.Void))
  (define-field-port
    chunked-uses
    #f
    #f
    (property:)
    System.Net.HttpConnection
    ChunkedUses
    System.Int32)
  (define-field-port
    local-end-point
    #f
    #f
    (property:)
    System.Net.HttpConnection
    LocalEndPoint
    System.Net.IPEndPoint)
  (define-field-port
    remote-end-point
    #f
    #f
    (property:)
    System.Net.HttpConnection
    RemoteEndPoint
    System.Net.IPEndPoint)
  (define-field-port
    is-secure?
    #f
    #f
    (property:)
    System.Net.HttpConnection
    IsSecure
    System.Boolean)
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    (property:)
    System.Net.HttpConnection
    Prefix
    System.Net.ListenerPrefix))
