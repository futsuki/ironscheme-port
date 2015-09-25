(library (system net network-information physical-address)
  (export new
          is?
          physical-address?
          get-hash-code
          parse
          get-address-bytes
          to-string
          equals?
          none)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.PhysicalAddress
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.PhysicalAddress a))
  (define (physical-address? a)
    (clr-is System.Net.NetworkInformation.PhysicalAddress a))
  (define-method-port
    get-hash-code
    System.Net.NetworkInformation.PhysicalAddress
    GetHashCode
    (System.Int32))
  (define-method-port
    parse
    System.Net.NetworkInformation.PhysicalAddress
    Parse
    (static:
      System.Net.NetworkInformation.PhysicalAddress
      System.String))
  (define-method-port
    get-address-bytes
    System.Net.NetworkInformation.PhysicalAddress
    GetAddressBytes
    (System.Byte[]))
  (define-method-port
    to-string
    System.Net.NetworkInformation.PhysicalAddress
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Net.NetworkInformation.PhysicalAddress
    Equals
    (System.Boolean System.Object))
  (define-field-port
    none
    #f
    #f
    (static:)
    System.Net.NetworkInformation.PhysicalAddress
    None
    System.Net.NetworkInformation.PhysicalAddress))
