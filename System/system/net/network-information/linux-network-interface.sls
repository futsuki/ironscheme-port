(library (system net network-information linux-network-interface)
  (export is?
          linux-network-interface?
          get-ipproperties
          get-ipv4-statistics
          impl-get-all-network-interfaces
          operational-status
          supports-multicast?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.LinuxNetworkInterface a))
  (define (linux-network-interface? a)
    (clr-is System.Net.NetworkInformation.LinuxNetworkInterface a))
  (define-method-port
    get-ipproperties
    System.Net.NetworkInformation.LinuxNetworkInterface
    GetIPProperties
    (System.Net.NetworkInformation.IPInterfaceProperties))
  (define-method-port
    get-ipv4-statistics
    System.Net.NetworkInformation.LinuxNetworkInterface
    GetIPv4Statistics
    (System.Net.NetworkInformation.IPv4InterfaceStatistics))
  (define-method-port
    impl-get-all-network-interfaces
    System.Net.NetworkInformation.LinuxNetworkInterface
    ImplGetAllNetworkInterfaces
    (static: System.Net.NetworkInformation.NetworkInterface[]))
  (define-field-port
    operational-status
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxNetworkInterface
    OperationalStatus
    System.Net.NetworkInformation.OperationalStatus)
  (define-field-port
    supports-multicast?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.LinuxNetworkInterface
    SupportsMulticast
    System.Boolean))
