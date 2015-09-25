(library (system net network-information gateway-ipaddress-information)
  (export is? gateway-ipaddress-information? address)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.GatewayIPAddressInformation
      a))
  (define (gateway-ipaddress-information? a)
    (clr-is
      System.Net.NetworkInformation.GatewayIPAddressInformation
      a))
  (define-field-port
    address
    #f
    #f
    (property:)
    System.Net.NetworkInformation.GatewayIPAddressInformation
    Address
    System.Net.IPAddress))
