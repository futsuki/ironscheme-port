(library (system net network-information mac-os-ipinterface-properties)
  (export new is? mac-os-ipinterface-properties? get-ipv4-properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.MacOsIPInterfaceProperties
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.MacOsIPInterfaceProperties a))
  (define (mac-os-ipinterface-properties? a)
    (clr-is System.Net.NetworkInformation.MacOsIPInterfaceProperties a))
  (define-method-port
    get-ipv4-properties
    System.Net.NetworkInformation.MacOsIPInterfaceProperties
    GetIPv4Properties
    (System.Net.NetworkInformation.IPv4InterfaceProperties)))
