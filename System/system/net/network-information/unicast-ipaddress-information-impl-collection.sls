(library (system
          net
          network-information
          unicast-ipaddress-information-impl-collection)
  (export is?
          unicast-ipaddress-information-impl-collection?
          win32-from-unicast
          linux-from-list
          empty
          is-read-only?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.UnicastIPAddressInformationImplCollection
      a))
  (define (unicast-ipaddress-information-impl-collection? a)
    (clr-is
      System.Net.NetworkInformation.UnicastIPAddressInformationImplCollection
      a))
  (define-method-port
    win32-from-unicast
    System.Net.NetworkInformation.UnicastIPAddressInformationImplCollection
    Win32FromUnicast
    (static:
      System.Net.NetworkInformation.UnicastIPAddressInformationCollection
      System.Int32
      System.IntPtr))
  (define-method-port
    linux-from-list
    System.Net.NetworkInformation.UnicastIPAddressInformationImplCollection
    LinuxFromList)
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.Net.NetworkInformation.UnicastIPAddressInformationImplCollection
    Empty
    System.Net.NetworkInformation.UnicastIPAddressInformationImplCollection)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnicastIPAddressInformationImplCollection
    IsReadOnly
    System.Boolean))
