(library (system net network-information ipglobal-properties)
  (export is?
          ipglobal-properties?
          get-udp-ipv6-statistics
          get-tcp-ipv6-statistics
          get-ipglobal-properties
          get-active-tcp-listeners
          get-icmp-v4-statistics
          get-ipv6-global-statistics
          get-ipv4-global-statistics
          get-icmp-v6-statistics
          get-active-tcp-connections
          get-tcp-ipv4-statistics
          get-active-udp-listeners
          get-udp-ipv4-statistics
          dhcp-scope-name
          domain-name
          host-name
          is-wins-proxy?
          node-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.IPGlobalProperties a))
  (define (ipglobal-properties? a)
    (clr-is System.Net.NetworkInformation.IPGlobalProperties a))
  (define-method-port
    get-udp-ipv6-statistics
    System.Net.NetworkInformation.IPGlobalProperties
    GetUdpIPv6Statistics
    (System.Net.NetworkInformation.UdpStatistics))
  (define-method-port
    get-tcp-ipv6-statistics
    System.Net.NetworkInformation.IPGlobalProperties
    GetTcpIPv6Statistics
    (System.Net.NetworkInformation.TcpStatistics))
  (define-method-port
    get-ipglobal-properties
    System.Net.NetworkInformation.IPGlobalProperties
    GetIPGlobalProperties
    (static: System.Net.NetworkInformation.IPGlobalProperties))
  (define-method-port
    get-active-tcp-listeners
    System.Net.NetworkInformation.IPGlobalProperties
    GetActiveTcpListeners
    (System.Net.IPEndPoint[]))
  (define-method-port
    get-icmp-v4-statistics
    System.Net.NetworkInformation.IPGlobalProperties
    GetIcmpV4Statistics
    (System.Net.NetworkInformation.IcmpV4Statistics))
  (define-method-port
    get-ipv6-global-statistics
    System.Net.NetworkInformation.IPGlobalProperties
    GetIPv6GlobalStatistics
    (System.Net.NetworkInformation.IPGlobalStatistics))
  (define-method-port
    get-ipv4-global-statistics
    System.Net.NetworkInformation.IPGlobalProperties
    GetIPv4GlobalStatistics
    (System.Net.NetworkInformation.IPGlobalStatistics))
  (define-method-port
    get-icmp-v6-statistics
    System.Net.NetworkInformation.IPGlobalProperties
    GetIcmpV6Statistics
    (System.Net.NetworkInformation.IcmpV6Statistics))
  (define-method-port
    get-active-tcp-connections
    System.Net.NetworkInformation.IPGlobalProperties
    GetActiveTcpConnections
    (System.Net.NetworkInformation.TcpConnectionInformation[]))
  (define-method-port
    get-tcp-ipv4-statistics
    System.Net.NetworkInformation.IPGlobalProperties
    GetTcpIPv4Statistics
    (System.Net.NetworkInformation.TcpStatistics))
  (define-method-port
    get-active-udp-listeners
    System.Net.NetworkInformation.IPGlobalProperties
    GetActiveUdpListeners
    (System.Net.IPEndPoint[]))
  (define-method-port
    get-udp-ipv4-statistics
    System.Net.NetworkInformation.IPGlobalProperties
    GetUdpIPv4Statistics
    (System.Net.NetworkInformation.UdpStatistics))
  (define-field-port
    dhcp-scope-name
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPGlobalProperties
    DhcpScopeName
    System.String)
  (define-field-port
    domain-name
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPGlobalProperties
    DomainName
    System.String)
  (define-field-port
    host-name
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPGlobalProperties
    HostName
    System.String)
  (define-field-port
    is-wins-proxy?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPGlobalProperties
    IsWinsProxy
    System.Boolean)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IPGlobalProperties
    NodeType
    System.Net.NetworkInformation.NetBiosNodeType))