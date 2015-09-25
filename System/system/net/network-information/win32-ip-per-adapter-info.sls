(library (system net network-information win32-ip-per-adapter-info)
  (export new
          is?
          win32-ip-per-adapter-info?
          autoconfig-enabled-get
          autoconfig-enabled-set!
          autoconfig-enabled-update!
          autoconfig-active-get
          autoconfig-active-set!
          autoconfig-active-update!
          current-dns-server-get
          current-dns-server-set!
          current-dns-server-update!
          dns-server-list-get
          dns-server-list-set!
          dns-server-list-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.Win32_IP_PER_ADAPTER_INFO
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.Win32_IP_PER_ADAPTER_INFO a))
  (define (win32-ip-per-adapter-info? a)
    (clr-is System.Net.NetworkInformation.Win32_IP_PER_ADAPTER_INFO a))
  (define-field-port
    autoconfig-enabled-get
    autoconfig-enabled-set!
    autoconfig-enabled-update!
    ()
    System.Net.NetworkInformation.Win32_IP_PER_ADAPTER_INFO
    AutoconfigEnabled
    System.UInt32)
  (define-field-port
    autoconfig-active-get
    autoconfig-active-set!
    autoconfig-active-update!
    ()
    System.Net.NetworkInformation.Win32_IP_PER_ADAPTER_INFO
    AutoconfigActive
    System.UInt32)
  (define-field-port
    current-dns-server-get
    current-dns-server-set!
    current-dns-server-update!
    ()
    System.Net.NetworkInformation.Win32_IP_PER_ADAPTER_INFO
    CurrentDnsServer
    System.IntPtr)
  (define-field-port
    dns-server-list-get
    dns-server-list-set!
    dns-server-list-update!
    ()
    System.Net.NetworkInformation.Win32_IP_PER_ADAPTER_INFO
    DnsServerList
    System.Net.NetworkInformation.Win32_IP_ADDR_STRING))
