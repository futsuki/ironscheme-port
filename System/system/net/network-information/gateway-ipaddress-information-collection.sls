(library (system
          net
          network-information
          gateway-ipaddress-information-collection)
  (export is?
          gateway-ipaddress-information-collection?
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
      System.Net.NetworkInformation.GatewayIPAddressInformationCollection
      a))
  (define (gateway-ipaddress-information-collection? a)
    (clr-is
      System.Net.NetworkInformation.GatewayIPAddressInformationCollection
      a))
  (define-method-port
    copy-to
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    CopyTo
    (System.Void
      System.Net.NetworkInformation.GatewayIPAddressInformation[]
      System.Int32))
  (define-method-port
    get-enumerator
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    GetEnumerator
    ("System.Collections.Generic.IEnumerator`1[[System.Net.NetworkInformation.GatewayIPAddressInformation, System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    Add
    (System.Void
      System.Net.NetworkInformation.GatewayIPAddressInformation))
  (define-method-port
    contains?
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    Contains
    (System.Boolean
      System.Net.NetworkInformation.GatewayIPAddressInformation))
  (define-method-port
    remove?
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    Remove
    (System.Boolean
      System.Net.NetworkInformation.GatewayIPAddressInformation))
  (define-method-port
    clear
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Net.NetworkInformation.GatewayIPAddressInformationCollection
    Item
    System.Net.NetworkInformation.GatewayIPAddressInformation))