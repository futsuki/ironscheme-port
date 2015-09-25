(library (system net network-information win32-fixed-info)
  (export new
          is?
          win32-fixed-info?
          host-name-get
          host-name-set!
          host-name-update!
          domain-name-get
          domain-name-set!
          domain-name-update!
          current-dns-server-get
          current-dns-server-set!
          current-dns-server-update!
          dns-server-list-get
          dns-server-list-set!
          dns-server-list-update!
          node-type-get
          node-type-set!
          node-type-update!
          scope-id-get
          scope-id-set!
          scope-id-update!
          enable-routing-get
          enable-routing-set!
          enable-routing-update!
          enable-proxy-get
          enable-proxy-set!
          enable-proxy-update!
          enable-dns-get
          enable-dns-set!
          enable-dns-update!
          instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.Win32_FIXED_INFO
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.Win32_FIXED_INFO a))
  (define (win32-fixed-info? a)
    (clr-is System.Net.NetworkInformation.Win32_FIXED_INFO a))
  (define-field-port
    host-name-get
    host-name-set!
    host-name-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    HostName
    System.String)
  (define-field-port
    domain-name-get
    domain-name-set!
    domain-name-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    DomainName
    System.String)
  (define-field-port
    current-dns-server-get
    current-dns-server-set!
    current-dns-server-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    CurrentDnsServer
    System.IntPtr)
  (define-field-port
    dns-server-list-get
    dns-server-list-set!
    dns-server-list-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    DnsServerList
    System.Net.NetworkInformation.Win32_IP_ADDR_STRING)
  (define-field-port
    node-type-get
    node-type-set!
    node-type-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    NodeType
    System.Net.NetworkInformation.NetBiosNodeType)
  (define-field-port
    scope-id-get
    scope-id-set!
    scope-id-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    ScopeId
    System.String)
  (define-field-port
    enable-routing-get
    enable-routing-set!
    enable-routing-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    EnableRouting
    System.UInt32)
  (define-field-port
    enable-proxy-get
    enable-proxy-set!
    enable-proxy-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    EnableProxy
    System.UInt32)
  (define-field-port
    enable-dns-get
    enable-dns-set!
    enable-dns-update!
    ()
    System.Net.NetworkInformation.Win32_FIXED_INFO
    EnableDns
    System.UInt32)
  (define-field-port
    instance
    #f
    #f
    (static: property:)
    System.Net.NetworkInformation.Win32_FIXED_INFO
    Instance
    System.Net.NetworkInformation.Win32_FIXED_INFO))
