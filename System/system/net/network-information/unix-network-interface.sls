(library (system net network-information unix-network-interface)
  (export is?
          unix-network-interface?
          get-physical-address
          supports?
          if-name-to-index
          description
          id
          is-receive-only?
          name
          network-interface-type
          speed)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.UnixNetworkInterface a))
  (define (unix-network-interface? a)
    (clr-is System.Net.NetworkInformation.UnixNetworkInterface a))
  (define-method-port
    get-physical-address
    System.Net.NetworkInformation.UnixNetworkInterface
    GetPhysicalAddress
    (System.Net.NetworkInformation.PhysicalAddress))
  (define-method-port
    supports?
    System.Net.NetworkInformation.UnixNetworkInterface
    Supports
    (System.Boolean
      System.Net.NetworkInformation.NetworkInterfaceComponent))
  (define-method-port
    if-name-to-index
    System.Net.NetworkInformation.UnixNetworkInterface
    IfNameToIndex
    (static: System.Int32 System.String))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixNetworkInterface
    Description
    System.String)
  (define-field-port
    id
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixNetworkInterface
    Id
    System.String)
  (define-field-port
    is-receive-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixNetworkInterface
    IsReceiveOnly
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixNetworkInterface
    Name
    System.String)
  (define-field-port
    network-interface-type
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixNetworkInterface
    NetworkInterfaceType
    System.Net.NetworkInformation.NetworkInterfaceType)
  (define-field-port
    speed
    #f
    #f
    (property:)
    System.Net.NetworkInformation.UnixNetworkInterface
    Speed
    System.Int64))
