(library (system
          net
          network-information
          win32-gateway-ipaddress-information-collection)
  (export new
          is?
          win32-gateway-ipaddress-information-collection?
          empty
          is-read-only?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.Win32GatewayIPAddressInformationCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.Win32GatewayIPAddressInformationCollection
      a))
  (define (win32-gateway-ipaddress-information-collection? a)
    (clr-is
      System.Net.NetworkInformation.Win32GatewayIPAddressInformationCollection
      a))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.Net.NetworkInformation.Win32GatewayIPAddressInformationCollection
    Empty
    System.Net.NetworkInformation.Win32GatewayIPAddressInformationCollection)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32GatewayIPAddressInformationCollection
    IsReadOnly
    System.Boolean))
