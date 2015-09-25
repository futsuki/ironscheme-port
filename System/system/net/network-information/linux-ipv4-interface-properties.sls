(library (system
          net
          network-information
          linux-ipv4-interface-properties)
  (export new
          is?
          linux-ipv4-interface-properties?
          is-forwarding-enabled?
          mtu)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.LinuxIPv4InterfaceProperties
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.LinuxIPv4InterfaceProperties
      a))
  (define (linux-ipv4-interface-properties? a)
    (clr-is
      System.Net.NetworkInformation.LinuxIPv4InterfaceProperties
      a))
  (define-field-port
    is-forwarding-enabled?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxIPv4InterfaceProperties
    IsForwardingEnabled
    System.Boolean)
  (define-field-port
    mtu
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxIPv4InterfaceProperties
    Mtu
    System.Int32))
