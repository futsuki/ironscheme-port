(library (system net network-information win32-ipaddress-collection)
  (export new
          is?
          win32-ipaddress-collection?
          from-dns-server
          from-anycast
          empty
          is-read-only?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.Win32IPAddressCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.Win32IPAddressCollection a))
  (define (win32-ipaddress-collection? a)
    (clr-is System.Net.NetworkInformation.Win32IPAddressCollection a))
  (define-method-port
    from-dns-server
    System.Net.NetworkInformation.Win32IPAddressCollection
    FromDnsServer
    (static:
      System.Net.NetworkInformation.Win32IPAddressCollection
      System.IntPtr))
  (define-method-port
    from-anycast
    System.Net.NetworkInformation.Win32IPAddressCollection
    FromAnycast
    (static:
      System.Net.NetworkInformation.Win32IPAddressCollection
      System.IntPtr))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.Net.NetworkInformation.Win32IPAddressCollection
    Empty
    System.Net.NetworkInformation.Win32IPAddressCollection)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPAddressCollection
    IsReadOnly
    System.Boolean))
