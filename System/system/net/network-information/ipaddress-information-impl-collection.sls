(library (system
          net
          network-information
          ipaddress-information-impl-collection)
  (export is?
          ipaddress-information-impl-collection?
          linux-from-anycast
          win32-from-anycast
          empty
          is-read-only?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.IPAddressInformationImplCollection
      a))
  (define (ipaddress-information-impl-collection? a)
    (clr-is
      System.Net.NetworkInformation.IPAddressInformationImplCollection
      a))
  (define-method-port
    linux-from-anycast
    System.Net.NetworkInformation.IPAddressInformationImplCollection
    LinuxFromAnycast)
  (define-method-port
    win32-from-anycast
    System.Net.NetworkInformation.IPAddressInformationImplCollection
    Win32FromAnycast
    (static:
      System.Net.NetworkInformation.IPAddressInformationCollection
      System.IntPtr))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IPAddressInformationImplCollection
    Empty
    System.Net.NetworkInformation.IPAddressInformationImplCollection)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformationImplCollection
    IsReadOnly
    System.Boolean))
