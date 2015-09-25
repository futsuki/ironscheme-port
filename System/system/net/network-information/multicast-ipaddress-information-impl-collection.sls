(library (system
          net
          network-information
          multicast-ipaddress-information-impl-collection)
  (export is?
          multicast-ipaddress-information-impl-collection?
          win32-from-multicast
          linux-from-list
          empty
          is-read-only?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.MulticastIPAddressInformationImplCollection
      a))
  (define (multicast-ipaddress-information-impl-collection? a)
    (clr-is
      System.Net.NetworkInformation.MulticastIPAddressInformationImplCollection
      a))
  (define-method-port
    win32-from-multicast
    System.Net.NetworkInformation.MulticastIPAddressInformationImplCollection
    Win32FromMulticast
    (static:
      System.Net.NetworkInformation.MulticastIPAddressInformationCollection
      System.IntPtr))
  (define-method-port
    linux-from-list
    System.Net.NetworkInformation.MulticastIPAddressInformationImplCollection
    LinuxFromList)
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.Net.NetworkInformation.MulticastIPAddressInformationImplCollection
    Empty
    System.Net.NetworkInformation.MulticastIPAddressInformationImplCollection)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MulticastIPAddressInformationImplCollection
    IsReadOnly
    System.Boolean))
