(library (system net network-information ipv6-interface-properties)
  (export is? ipv6-interface-properties? index mtu)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.IPv6InterfaceProperties a))
  (define (ipv6-interface-properties? a)
    (clr-is System.Net.NetworkInformation.IPv6InterfaceProperties a))
  (define-field-port
    index
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPv6InterfaceProperties
    Index
    System.Int32)
  (define-field-port
    mtu
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPv6InterfaceProperties
    Mtu
    System.Int32))
