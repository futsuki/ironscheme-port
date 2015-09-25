(library (system net socket-address)
  (export new
          is?
          socket-address?
          get-hash-code
          equals?
          to-string
          family
          size
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.SocketAddress a ...)))))
  (define (is? a) (clr-is System.Net.SocketAddress a))
  (define (socket-address? a) (clr-is System.Net.SocketAddress a))
  (define-method-port
    get-hash-code
    System.Net.SocketAddress
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Net.SocketAddress
    Equals
    (System.Boolean System.Object))
  (define-method-port
    to-string
    System.Net.SocketAddress
    ToString
    (System.String))
  (define-field-port
    family
    #f
    #f
    (property:)
    System.Net.SocketAddress
    Family
    System.Net.Sockets.AddressFamily)
  (define-field-port
    size
    #f
    #f
    (property:)
    System.Net.SocketAddress
    Size
    System.Int32)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.SocketAddress
    Item
    System.Byte))
