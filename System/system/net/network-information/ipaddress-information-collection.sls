(library (system
          net
          network-information
          ipaddress-information-collection)
  (export is?
          ipaddress-information-collection?
          copy-to
          get-enumerator
          add
          contains?
          remove?
          clear
          count
          is-read-only?
          item)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.IPAddressInformationCollection
      a))
  (define (ipaddress-information-collection? a)
    (clr-is
      System.Net.NetworkInformation.IPAddressInformationCollection
      a))
  (define-method-port
    copy-to
    System.Net.NetworkInformation.IPAddressInformationCollection
    CopyTo
    (System.Void
      System.Net.NetworkInformation.IPAddressInformation[]
      System.Int32))
  (define-method-port
    get-enumerator
    System.Net.NetworkInformation.IPAddressInformationCollection
    GetEnumerator
    ("System.Collections.Generic.IEnumerator`1[[System.Net.NetworkInformation.IPAddressInformation, System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add
    System.Net.NetworkInformation.IPAddressInformationCollection
    Add
    (System.Void System.Net.NetworkInformation.IPAddressInformation))
  (define-method-port
    contains?
    System.Net.NetworkInformation.IPAddressInformationCollection
    Contains
    (System.Boolean System.Net.NetworkInformation.IPAddressInformation))
  (define-method-port
    remove?
    System.Net.NetworkInformation.IPAddressInformationCollection
    Remove
    (System.Boolean System.Net.NetworkInformation.IPAddressInformation))
  (define-method-port
    clear
    System.Net.NetworkInformation.IPAddressInformationCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformationCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformationCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressInformationCollection
    Item
    System.Net.NetworkInformation.IPAddressInformation))
