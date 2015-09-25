(library (system
          net
          network-information
          mac-os-ipv4-interface-properties)
  (export new
          is?
          mac-os-ipv4-interface-properties?
          is-forwarding-enabled?
          mtu)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.MacOsIPv4InterfaceProperties
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.MacOsIPv4InterfaceProperties
      a))
  (define (mac-os-ipv4-interface-properties? a)
    (clr-is
      System.Net.NetworkInformation.MacOsIPv4InterfaceProperties
      a))
  (define-field-port
    is-forwarding-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MacOsIPv4InterfaceProperties
    IsForwardingEnabled
    System.Boolean)
  (define-field-port
    mtu
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MacOsIPv4InterfaceProperties
    Mtu
    System.Int32))
