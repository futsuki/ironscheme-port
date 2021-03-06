(library (system
          net
          network-information
          linux-unicast-ipaddress-information)
  (export new
          is?
          linux-unicast-ipaddress-information?
          address
          is-dns-eligible?
          is-transient?
          address-preferred-lifetime
          address-valid-lifetime
          dhcp-lease-lifetime
          duplicate-address-detection-state
          ipv4-mask
          prefix-origin
          suffix-origin)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
      a))
  (define (linux-unicast-ipaddress-information? a)
    (clr-is
      System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
      a))
  (define-field-port
    address
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    Address
    System.Net.IPAddress)
  (define-field-port
    is-dns-eligible?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    IsDnsEligible
    System.Boolean)
  (define-field-port
    is-transient?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    IsTransient
    System.Boolean)
  (define-field-port
    address-preferred-lifetime
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    AddressPreferredLifetime
    System.Int64)
  (define-field-port
    address-valid-lifetime
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    AddressValidLifetime
    System.Int64)
  (define-field-port
    dhcp-lease-lifetime
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    DhcpLeaseLifetime
    System.Int64)
  (define-field-port
    duplicate-address-detection-state
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    DuplicateAddressDetectionState
    System.Net.NetworkInformation.DuplicateAddressDetectionState)
  (define-field-port
    ipv4-mask
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    IPv4Mask
    System.Net.IPAddress)
  (define-field-port
    prefix-origin
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    PrefixOrigin
    System.Net.NetworkInformation.PrefixOrigin)
  (define-field-port
    suffix-origin
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxUnicastIPAddressInformation
    SuffixOrigin
    System.Net.NetworkInformation.SuffixOrigin))
