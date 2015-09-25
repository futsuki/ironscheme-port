(library (system net network-information win32-ipglobal-properties)
  (export new
          is?
          win32-ipglobal-properties?
          get-udp-ipv6-statistics
          get-tcp-ipv6-statistics
          get-active-tcp-listeners
          get-icmp-v4-statistics
          get-ipv6-global-statistics
          get-ipv4-global-statistics
          get-icmp-v6-statistics
          get-active-tcp-connections
          get-tcp-ipv4-statistics
          get-active-udp-listeners
          get-udp-ipv4-statistics
          af-inet
          af-inet6
          dhcp-scope-name
          domain-name
          host-name
          is-wins-proxy?
          node-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.Win32IPGlobalProperties
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.Win32IPGlobalProperties a))
  (define (win32-ipglobal-properties? a)
    (clr-is System.Net.NetworkInformation.Win32IPGlobalProperties a))
  (define-method-port
    get-udp-ipv6-statistics
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetUdpIPv6Statistics
    (System.Net.NetworkInformation.UdpStatistics))
  (define-method-port
    get-tcp-ipv6-statistics
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetTcpIPv6Statistics
    (System.Net.NetworkInformation.TcpStatistics))
  (define-method-port
    get-active-tcp-listeners
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetActiveTcpListeners
    (System.Net.IPEndPoint[]))
  (define-method-port
    get-icmp-v4-statistics
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetIcmpV4Statistics
    (System.Net.NetworkInformation.IcmpV4Statistics))
  (define-method-port
    get-ipv6-global-statistics
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetIPv6GlobalStatistics
    (System.Net.NetworkInformation.IPGlobalStatistics))
  (define-method-port
    get-ipv4-global-statistics
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetIPv4GlobalStatistics
    (System.Net.NetworkInformation.IPGlobalStatistics))
  (define-method-port
    get-icmp-v6-statistics
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetIcmpV6Statistics
    (System.Net.NetworkInformation.IcmpV6Statistics))
  (define-method-port
    get-active-tcp-connections
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetActiveTcpConnections
    (System.Net.NetworkInformation.TcpConnectionInformation[]))
  (define-method-port
    get-tcp-ipv4-statistics
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetTcpIPv4Statistics
    (System.Net.NetworkInformation.TcpStatistics))
  (define-method-port
    get-active-udp-listeners
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetActiveUdpListeners
    (System.Net.IPEndPoint[]))
  (define-method-port
    get-udp-ipv4-statistics
    System.Net.NetworkInformation.Win32IPGlobalProperties
    GetUdpIPv4Statistics
    (System.Net.NetworkInformation.UdpStatistics))
  (define-field-port
    af-inet
    #f
    #f
    (static:)
    System.Net.NetworkInformation.Win32IPGlobalProperties
    AF_INET
    System.Int32)
  (define-field-port
    af-inet6
    #f
    #f
    (static:)
    System.Net.NetworkInformation.Win32IPGlobalProperties
    AF_INET6
    System.Int32)
  (define-field-port
    dhcp-scope-name
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPGlobalProperties
    DhcpScopeName
    System.String)
  (define-field-port
    domain-name
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPGlobalProperties
    DomainName
    System.String)
  (define-field-port
    host-name
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPGlobalProperties
    HostName
    System.String)
  (define-field-port
    is-wins-proxy?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPGlobalProperties
    IsWinsProxy
    System.Boolean)
  (define-field-port
    node-type
    #f
    #f
    (property:)
    System.Net.NetworkInformation.Win32IPGlobalProperties
    NodeType
    System.Net.NetworkInformation.NetBiosNodeType))