(library (system net network-information ipaddress-collection)
  (export is?
          ipaddress-collection?
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
    (clr-is System.Net.NetworkInformation.IPAddressCollection a))
  (define (ipaddress-collection? a)
    (clr-is System.Net.NetworkInformation.IPAddressCollection a))
  (define-method-port
    copy-to
    System.Net.NetworkInformation.IPAddressCollection
    CopyTo
    (System.Void System.Net.IPAddress[] System.Int32))
  (define-method-port
    get-enumerator
    System.Net.NetworkInformation.IPAddressCollection
    GetEnumerator
    ("System.Collections.Generic.IEnumerator`1[[System.Net.IPAddress, System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add
    System.Net.NetworkInformation.IPAddressCollection
    Add
    (System.Void System.Net.IPAddress))
  (define-method-port
    contains?
    System.Net.NetworkInformation.IPAddressCollection
    Contains
    (System.Boolean System.Net.IPAddress))
  (define-method-port
    remove?
    System.Net.NetworkInformation.IPAddressCollection
    Remove
    (System.Boolean System.Net.IPAddress))
  (define-method-port
    clear
    System.Net.NetworkInformation.IPAddressCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPAddressCollection
    Item
    System.Net.IPAddress))
