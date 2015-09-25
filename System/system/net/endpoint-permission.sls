(library (system net endpoint-permission)
  (export is?
          endpoint-permission?
          get-hash-code
          to-string
          equals?
          hostname
          port
          transport)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.EndpointPermission a))
  (define (endpoint-permission? a)
    (clr-is System.Net.EndpointPermission a))
  (define-method-port
    get-hash-code
    System.Net.EndpointPermission
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Net.EndpointPermission
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Net.EndpointPermission
    Equals
    (System.Boolean System.Object))
  (define-field-port
    hostname
    #f
    #f
    (property:)
    System.Net.EndpointPermission
    Hostname
    System.String)
  (define-field-port
    port
    #f
    #f
    (property:)
    System.Net.EndpointPermission
    Port
    System.Int32)
  (define-field-port
    transport
    #f
    #f
    (property:)
    System.Net.EndpointPermission
    Transport
    System.Net.TransportType))
