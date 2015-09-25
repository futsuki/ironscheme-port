(library (system net network-information unix-ipv4-interface-properties)
  (export new
          is?
          unix-ipv4-interface-properties?
          index
          is-automatic-private-addressing-active?
          is-automatic-private-addressing-enabled?
          is-dhcp-enabled?
          uses-wins?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.UnixIPv4InterfaceProperties
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.UnixIPv4InterfaceProperties
      a))
  (define (unix-ipv4-interface-properties? a)
    (clr-is
      System.Net.NetworkInformation.UnixIPv4InterfaceProperties
      a))
  (define-field-port
    index
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPv4InterfaceProperties
    Index
    System.Int32)
  (define-field-port
    is-automatic-private-addressing-active?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPv4InterfaceProperties
    IsAutomaticPrivateAddressingActive
    System.Boolean)
  (define-field-port
    is-automatic-private-addressing-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPv4InterfaceProperties
    IsAutomaticPrivateAddressingEnabled
    System.Boolean)
  (define-field-port
    is-dhcp-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPv4InterfaceProperties
    IsDhcpEnabled
    System.Boolean)
  (define-field-port
    uses-wins?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixIPv4InterfaceProperties
    UsesWins
    System.Boolean))
