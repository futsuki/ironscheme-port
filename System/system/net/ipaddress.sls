(library (system net ipaddress)
  (export new
          is?
          ipaddress?
          get-hash-code
          parse
          get-address-bytes
          equals?
          try-parse?
          host-to-network-order
          network-to-host-order
          to-string
          is-loopback?
          any
          broadcast
          loopback
          none
          ipv6-any
          ipv6-loopback
          ipv6-none
          address-get
          address-set!
          address-update!
          is-ipv6-link-local?
          is-ipv6-site-local?
          is-ipv6-multicast?
          scope-id-get
          scope-id-set!
          scope-id-update!
          address-family)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.IPAddress a ...)))))
  (define (is? a) (clr-is System.Net.IPAddress a))
  (define (ipaddress? a) (clr-is System.Net.IPAddress a))
  (define-method-port
    get-hash-code
    System.Net.IPAddress
    GetHashCode
    (System.Int32))
  (define-method-port
    parse
    System.Net.IPAddress
    Parse
    (static: System.Net.IPAddress System.String))
  (define-method-port
    get-address-bytes
    System.Net.IPAddress
    GetAddressBytes
    (System.Byte[]))
  (define-method-port
    equals?
    System.Net.IPAddress
    Equals
    (System.Boolean System.Object))
  (define-method-port
    try-parse?
    System.Net.IPAddress
    TryParse
    (static: System.Boolean System.String System.Net.IPAddress&))
  (define-method-port
    host-to-network-order
    System.Net.IPAddress
    HostToNetworkOrder
    (static: System.Int64 System.Int64)
    (static: System.Int32 System.Int32)
    (static: System.Int16 System.Int16))
  (define-method-port
    network-to-host-order
    System.Net.IPAddress
    NetworkToHostOrder
    (static: System.Int64 System.Int64)
    (static: System.Int32 System.Int32)
    (static: System.Int16 System.Int16))
  (define-method-port
    to-string
    System.Net.IPAddress
    ToString
    (System.String))
  (define-method-port
    is-loopback?
    System.Net.IPAddress
    IsLoopback
    (static: System.Boolean System.Net.IPAddress))
  (define-field-port
    any
    #f
    #f
    (static:)
    System.Net.IPAddress
    Any
    System.Net.IPAddress)
  (define-field-port
    broadcast
    #f
    #f
    (static:)
    System.Net.IPAddress
    Broadcast
    System.Net.IPAddress)
  (define-field-port
    loopback
    #f
    #f
    (static:)
    System.Net.IPAddress
    Loopback
    System.Net.IPAddress)
  (define-field-port
    none
    #f
    #f
    (static:)
    System.Net.IPAddress
    None
    System.Net.IPAddress)
  (define-field-port
    ipv6-any
    #f
    #f
    (static:)
    System.Net.IPAddress
    IPv6Any
    System.Net.IPAddress)
  (define-field-port
    ipv6-loopback
    #f
    #f
    (static:)
    System.Net.IPAddress
    IPv6Loopback
    System.Net.IPAddress)
  (define-field-port
    ipv6-none
    #f
    #f
    (static:)
    System.Net.IPAddress
    IPv6None
    System.Net.IPAddress)
  (define-field-port
    address-get
    address-set!
    address-update!
    (property:)
    System.Net.IPAddress
    Address
    System.Int64)
  (define-field-port
    is-ipv6-link-local?
    #f
    #f
    (property:)
    System.Net.IPAddress
    IsIPv6LinkLocal
    System.Boolean)
  (define-field-port
    is-ipv6-site-local?
    #f
    #f
    (property:)
    System.Net.IPAddress
    IsIPv6SiteLocal
    System.Boolean)
  (define-field-port
    is-ipv6-multicast?
    #f
    #f
    (property:)
    System.Net.IPAddress
    IsIPv6Multicast
    System.Boolean)
  (define-field-port
    scope-id-get
    scope-id-set!
    scope-id-update!
    (property:)
    System.Net.IPAddress
    ScopeId
    System.Int64)
  (define-field-port
    address-family
    #f
    #f
    (property:)
    System.Net.IPAddress
    AddressFamily
    System.Net.Sockets.AddressFamily))
