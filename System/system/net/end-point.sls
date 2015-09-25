(library (system net end-point)
  (export is? end-point? create serialize address-family)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.EndPoint a))
  (define (end-point? a) (clr-is System.Net.EndPoint a))
  (define-method-port
    create
    System.Net.EndPoint
    Create
    (System.Net.EndPoint System.Net.SocketAddress))
  (define-method-port
    serialize
    System.Net.EndPoint
    Serialize
    (System.Net.SocketAddress))
  (define-field-port
    address-family
    #f
    #f
    (property:)
    System.Net.EndPoint
    AddressFamily
    System.Net.Sockets.AddressFamily))
