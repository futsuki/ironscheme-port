(library (system net network-information ipaddress-information)
  (export is?
          ipaddress-information?
          address
          is-dns-eligible?
          is-transient?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.IPAddressInformation a))
  (define (ipaddress-information? a)
    (clr-is System.Net.NetworkInformation.IPAddressInformation a))
  (define-field-port
    address
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformation
    Address
    System.Net.IPAddress)
  (define-field-port
    is-dns-eligible?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformation
    IsDnsEligible
    System.Boolean)
  (define-field-port
    is-transient?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformation
    IsTransient
    System.Boolean))
