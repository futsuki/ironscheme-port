(library (system
          net
          network-information
          gateway-ipaddress-information-impl)
  (export new is? gateway-ipaddress-information-impl? address)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.GatewayIPAddressInformationImpl
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.GatewayIPAddressInformationImpl
      a))
  (define (gateway-ipaddress-information-impl? a)
    (clr-is
      System.Net.NetworkInformation.GatewayIPAddressInformationImpl
      a))
  (define-field-port
    address
    #f
    #f
    (property:)
    System.Net.NetworkInformation.GatewayIPAddressInformationImpl
    Address
    System.Net.IPAddress))
