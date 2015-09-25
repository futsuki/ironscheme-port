(library (system net network-information linux-ipinterface-properties)
  (export new is? linux-ipinterface-properties? get-ipv4-properties)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.LinuxIPInterfaceProperties
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.LinuxIPInterfaceProperties a))
  (define (linux-ipinterface-properties? a)
    (clr-is System.Net.NetworkInformation.LinuxIPInterfaceProperties a))
  (define-method-port
    get-ipv4-properties
    System.Net.NetworkInformation.LinuxIPInterfaceProperties
    GetIPv4Properties
    (System.Net.NetworkInformation.IPv4InterfaceProperties)))
