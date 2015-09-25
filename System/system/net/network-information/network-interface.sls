(library (system net network-information network-interface)
  (export is?
          network-interface?
          get-is-network-available?
          get-ipproperties
          get-physical-address
          get-ipv4-statistics
          get-all-network-interfaces
          supports?
          loopback-interface-index
          description
          id
          is-receive-only?
          name
          network-interface-type
          operational-status
          speed
          supports-multicast?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.NetworkInterface a))
  (define (network-interface? a)
    (clr-is System.Net.NetworkInformation.NetworkInterface a))
  (define-method-port
    get-is-network-available?
    System.Net.NetworkInformation.NetworkInterface
    GetIsNetworkAvailable
    (static: System.Boolean))
  (define-method-port
    get-ipproperties
    System.Net.NetworkInformation.NetworkInterface
    GetIPProperties
    (System.Net.NetworkInformation.IPInterfaceProperties))
  (define-method-port
    get-physical-address
    System.Net.NetworkInformation.NetworkInterface
    GetPhysicalAddress
    (System.Net.NetworkInformation.PhysicalAddress))
  (define-method-port
    get-ipv4-statistics
    System.Net.NetworkInformation.NetworkInterface
    GetIPv4Statistics
    (System.Net.NetworkInformation.IPv4InterfaceStatistics))
  (define-method-port
    get-all-network-interfaces
    System.Net.NetworkInformation.NetworkInterface
    GetAllNetworkInterfaces
    (static: System.Net.NetworkInformation.NetworkInterface[]))
  (define-method-port
    supports?
    System.Net.NetworkInformation.NetworkInterface
    Supports
    (System.Boolean
      System.Net.NetworkInformation.NetworkInterfaceComponent))
  (define-field-port
    loopback-interface-index
    #f
    #f
    (static: property:)
    System.Net.NetworkInformation.NetworkInterface
    LoopbackInterfaceIndex
    System.Int32)
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInterface
    Description
    System.String)
  (define-field-port
    id
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInterface
    Id
    System.String)
  (define-field-port
    is-receive-only?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInterface
    IsReceiveOnly
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInterface
    Name
    System.String)
  (define-field-port
    network-interface-type
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInterface
    NetworkInterfaceType
    System.Net.NetworkInformation.NetworkInterfaceType)
  (define-field-port
    operational-status
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInterface
    OperationalStatus
    System.Net.NetworkInformation.OperationalStatus)
  (define-field-port
    speed
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInterface
    Speed
    System.Int64)
  (define-field-port
    supports-multicast?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkInterface
    SupportsMulticast
    System.Boolean))