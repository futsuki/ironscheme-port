(library (system
          net
          network-information
          win32-ipv6-interface-properties)
  (export new is? win32-ipv6-interface-properties? index mtu)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.Win32IPv6InterfaceProperties
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.Win32IPv6InterfaceProperties
      a))
  (define (win32-ipv6-interface-properties? a)
    (clr-is
      System.Net.NetworkInformation.Win32IPv6InterfaceProperties
      a))
  (define-field-port
    index
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv6InterfaceProperties
    Index
    System.Int32)
  (define-field-port
    mtu
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPv6InterfaceProperties
    Mtu
    System.Int32))
