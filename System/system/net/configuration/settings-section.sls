(library (system net configuration settings-section)
  (export new
          is?
          settings-section?
          http-web-request
          ipv6
          performance-counters
          service-point-manager
          socket
          web-proxy-script)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Configuration.SettingsSection a ...)))))
  (define (is? a) (clr-is System.Net.Configuration.SettingsSection a))
  (define (settings-section? a)
    (clr-is System.Net.Configuration.SettingsSection a))
  (define-field-port
    http-web-request
    #f
    #f
    (property:)
    System.Net.Configuration.SettingsSection
    HttpWebRequest
    System.Net.Configuration.HttpWebRequestElement)
  (define-field-port
    ipv6
    #f
    #f
    (property:)
    System.Net.Configuration.SettingsSection
    Ipv6
    System.Net.Configuration.Ipv6Element)
  (define-field-port
    performance-counters
    #f
    #f
    (property:)
    System.Net.Configuration.SettingsSection
    PerformanceCounters
    System.Net.Configuration.PerformanceCountersElement)
  (define-field-port
    service-point-manager
    #f
    #f
    (property:)
    System.Net.Configuration.SettingsSection
    ServicePointManager
    System.Net.Configuration.ServicePointManagerElement)
  (define-field-port
    socket
    #f
    #f
    (property:)
    System.Net.Configuration.SettingsSection
    Socket
    System.Net.Configuration.SocketElement)
  (define-field-port
    web-proxy-script
    #f
    #f
    (property:)
    System.Net.Configuration.SettingsSection
    WebProxyScript
    System.Net.Configuration.WebProxyScriptElement))
