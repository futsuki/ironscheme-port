(library (system net network-information mac-os-network-interface)
  (export is?
          mac-os-network-interface?
          get-ipproperties
          get-ipv4-statistics
          impl-get-all-network-interfaces
          operational-status
          supports-multicast?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.MacOsNetworkInterface a))
  (define (mac-os-network-interface? a)
    (clr-is System.Net.NetworkInformation.MacOsNetworkInterface a))
  (define-method-port
    get-ipproperties
    System.Net.NetworkInformation.MacOsNetworkInterface
    GetIPProperties
    (System.Net.NetworkInformation.IPInterfaceProperties))
  (define-method-port
    get-ipv4-statistics
    System.Net.NetworkInformation.MacOsNetworkInterface
    GetIPv4Statistics
    (System.Net.NetworkInformation.IPv4InterfaceStatistics))
  (define-method-port
    impl-get-all-network-interfaces
    System.Net.NetworkInformation.MacOsNetworkInterface
    ImplGetAllNetworkInterfaces
    (static: System.Net.NetworkInformation.NetworkInterface[]))
  (define-field-port
    operational-status
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MacOsNetworkInterface
    OperationalStatus
    System.Net.NetworkInformation.OperationalStatus)
  (define-field-port
    supports-multicast?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.MacOsNetworkInterface
    SupportsMulticast
    System.Boolean))
