(library (system
          net
          network-information
          win32-ipv4-interface-properties)
  (export new
          is?
          win32-ipv4-interface-properties?
          index
          is-automatic-private-addressing-active?
          is-automatic-private-addressing-enabled?
          is-dhcp-enabled?
          is-forwarding-enabled?
          mtu
          uses-wins?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.Win32IPv4InterfaceProperties
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.Win32IPv4InterfaceProperties
      a))
  (define (win32-ipv4-interface-properties? a)
    (clr-is
      System.Net.NetworkInformation.Win32IPv4InterfaceProperties
      a))
  (define-field-port
    index
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv4InterfaceProperties
    Index
    System.Int32)
  (define-field-port
    is-automatic-private-addressing-active?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv4InterfaceProperties
    IsAutomaticPrivateAddressingActive
    System.Boolean)
  (define-field-port
    is-automatic-private-addressing-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv4InterfaceProperties
    IsAutomaticPrivateAddressingEnabled
    System.Boolean)
  (define-field-port
    is-dhcp-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv4InterfaceProperties
    IsDhcpEnabled
    System.Boolean)
  (define-field-port
    is-forwarding-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv4InterfaceProperties
    IsForwardingEnabled
    System.Boolean)
  (define-field-port
    mtu
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv4InterfaceProperties
    Mtu
    System.Int32)
  (define-field-port
    uses-wins?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv4InterfaceProperties
    UsesWins
    System.Boolean))
