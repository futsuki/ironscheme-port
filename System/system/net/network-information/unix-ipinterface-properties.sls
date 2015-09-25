(library (system net network-information unix-ipinterface-properties)
  (export new
          is?
          unix-ipinterface-properties?
          get-ipv6-properties
          anycast-addresses
          dhcp-server-addresses
          dns-addresses
          dns-suffix
          gateway-addresses
          is-dns-enabled?
          is-dynamic-dns-enabled?
          multicast-addresses
          unicast-addresses
          wins-servers-addresses)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.UnixIPInterfaceProperties
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.UnixIPInterfaceProperties a))
  (define (unix-ipinterface-properties? a)
    (clr-is System.Net.NetworkInformation.UnixIPInterfaceProperties a))
  (define-method-port
    get-ipv6-properties
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    GetIPv6Properties
    (System.Net.NetworkInformation.IPv6InterfaceProperties))
  (define-field-port
    anycast-addresses
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    AnycastAddresses
    System.Net.NetworkInformation.IPAddressInformationCollection)
  (define-field-port
    dhcp-server-addresses
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    DhcpServerAddresses
    System.Net.NetworkInformation.IPAddressCollection)
  (define-field-port
    dns-addresses
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    DnsAddresses
    System.Net.NetworkInformation.IPAddressCollection)
  (define-field-port
    dns-suffix
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    DnsSuffix
    System.String)
  (define-field-port
    gateway-addresses
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    GatewayAddresses
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection)
  (define-field-port
    is-dns-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    IsDnsEnabled
    System.Boolean)
  (define-field-port
    is-dynamic-dns-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    IsDynamicDnsEnabled
    System.Boolean)
  (define-field-port
    multicast-addresses
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    MulticastAddresses
    System.Net.NetworkInformation.MulticastIPAddressInformationCollection)
  (define-field-port
    unicast-addresses
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    UnicastAddresses
    System.Net.NetworkInformation.UnicastIPAddressInformationCollection)
  (define-field-port
    wins-servers-addresses
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPInterfaceProperties
    WinsServersAddresses
    System.Net.NetworkInformation.IPAddressCollection))
