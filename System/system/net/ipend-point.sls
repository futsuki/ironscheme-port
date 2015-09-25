(library (system net ipend-point)
  (export new
          is?
          ipend-point?
          get-hash-code
          create
          equals?
          serialize
          to-string
          max-port
          min-port
          address-get
          address-set!
          address-update!
          address-family
          port-get
          port-set!
          port-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.IPEndPoint a ...)))))
  (define (is? a) (clr-is System.Net.IPEndPoint a))
  (define (ipend-point? a) (clr-is System.Net.IPEndPoint a))
  (define-method-port
    get-hash-code
    System.Net.IPEndPoint
    GetHashCode
    (System.Int32))
  (define-method-port
    create
    System.Net.IPEndPoint
    Create
    (System.Net.EndPoint System.Net.SocketAddress))
  (define-method-port
    equals?
    System.Net.IPEndPoint
    Equals
    (System.Boolean System.Object))
  (define-method-port
    serialize
    System.Net.IPEndPoint
    Serialize
    (System.Net.SocketAddress))
  (define-method-port
    to-string
    System.Net.IPEndPoint
    ToString
    (System.String))
  (define-field-port
    max-port
    #f
    #f
    (static:)
    System.Net.IPEndPoint
    MaxPort
    System.Int32)
  (define-field-port
    min-port
    #f
    #f
    (static:)
    System.Net.IPEndPoint
    MinPort
    System.Int32)
  (define-field-port
    address-get
    address-set!
    address-update!
    (property:)
    System.Net.IPEndPoint
    Address
    System.Net.IPAddress)
  (define-field-port
    address-family
    #f
    #f
    (property:)
    System.Net.IPEndPoint
    AddressFamily
    System.Net.Sockets.AddressFamily)
  (define-field-port
    port-get
    port-set!
    port-update!
    (property:)
    System.Net.IPEndPoint
    Port
    System.Int32))
