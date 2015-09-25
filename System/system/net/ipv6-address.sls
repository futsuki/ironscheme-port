(library (system net ipv6-address)
  (export new
          is?
          ipv6-address?
          get-hash-code
          is-ipv4-compatible?
          parse
          equals?
          try-parse?
          is-ipv4-mapped?
          to-string
          is-loopback?
          loopback
          unspecified
          address
          prefix-length
          scope-id-get
          scope-id-set!
          scope-id-update!
          item
          address-family)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.IPv6Address a ...)))))
  (define (is? a) (clr-is System.Net.IPv6Address a))
  (define (ipv6-address? a) (clr-is System.Net.IPv6Address a))
  (define-method-port
    get-hash-code
    System.Net.IPv6Address
    GetHashCode
    (System.Int32))
  (define-method-port
    is-ipv4-compatible?
    System.Net.IPv6Address
    IsIPv4Compatible
    (System.Boolean))
  (define-method-port
    parse
    System.Net.IPv6Address
    Parse
    (static: System.Net.IPv6Address System.String))
  (define-method-port
    equals?
    System.Net.IPv6Address
    Equals
    (System.Boolean System.Object))
  (define-method-port
    try-parse?
    System.Net.IPv6Address
    TryParse
    (static: System.Boolean System.String System.Net.IPv6Address&))
  (define-method-port
    is-ipv4-mapped?
    System.Net.IPv6Address
    IsIPv4Mapped
    (System.Boolean))
  (define-method-port
    to-string
    System.Net.IPv6Address
    ToString
    (System.String System.Boolean)
    (System.String))
  (define-method-port
    is-loopback?
    System.Net.IPv6Address
    IsLoopback
    (static: System.Boolean System.Net.IPv6Address))
  (define-field-port
    loopback
    #f
    #f
    (static:)
    System.Net.IPv6Address
    Loopback
    System.Net.IPv6Address)
  (define-field-port
    unspecified
    #f
    #f
    (static:)
    System.Net.IPv6Address
    Unspecified
    System.Net.IPv6Address)
  (define-field-port
    address
    #f
    #f
    (property:)
    System.Net.IPv6Address
    Address
    System.UInt16[])
  (define-field-port
    prefix-length
    #f
    #f
    (property:)
    System.Net.IPv6Address
    PrefixLength
    System.Int32)
  (define-field-port
    scope-id-get
    scope-id-set!
    scope-id-update!
    (property:)
    System.Net.IPv6Address
    ScopeId
    System.Int64)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Net.IPv6Address
    Item
    System.UInt16)
  (define-field-port
    address-family
    #f
    #f
    (property:)
    System.Net.IPv6Address
    AddressFamily
    System.Net.Sockets.AddressFamily))
