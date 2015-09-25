(library (system
          net
          network-information
          linux-gateway-ipaddress-information-collection)
  (export new
          is?
          linux-gateway-ipaddress-information-collection?
          empty
          is-read-only?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.LinuxGatewayIPAddressInformationCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.LinuxGatewayIPAddressInformationCollection
      a))
  (define (linux-gateway-ipaddress-information-collection? a)
    (clr-is
      System.Net.NetworkInformation.LinuxGatewayIPAddressInformationCollection
      a))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.Net.NetworkInformation.LinuxGatewayIPAddressInformationCollection
    Empty
    System.Net.NetworkInformation.LinuxGatewayIPAddressInformationCollection)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxGatewayIPAddressInformationCollection
    IsReadOnly
    System.Boolean))
