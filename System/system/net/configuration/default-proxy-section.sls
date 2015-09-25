(library (system net configuration default-proxy-section)
  (export new
          is?
          default-proxy-section?
          bypass-list
          enabled?-get
          enabled?-set!
          enabled?-update!
          module
          proxy
          use-default-credentials?-get
          use-default-credentials?-set!
          use-default-credentials?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.DefaultProxySection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.DefaultProxySection a))
  (define (default-proxy-section? a)
    (clr-is System.Net.Configuration.DefaultProxySection a))
  (define-field-port
    bypass-list
    #f
    #f
    (property:)
    System.Net.Configuration.DefaultProxySection
    BypassList
    System.Net.Configuration.BypassElementCollection)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.Net.Configuration.DefaultProxySection
    Enabled
    System.Boolean)
  (define-field-port
    module
    #f
    #f
    (property:)
    System.Net.Configuration.DefaultProxySection
    Module
    System.Net.Configuration.ModuleElement)
  (define-field-port
    proxy
    #f
    #f
    (property:)
    System.Net.Configuration.DefaultProxySection
    Proxy
    System.Net.Configuration.ProxyElement)
  (define-field-port
    use-default-credentials?-get
    use-default-credentials?-set!
    use-default-credentials?-update!
    (property:)
    System.Net.Configuration.DefaultProxySection
    UseDefaultCredentials
    System.Boolean))
