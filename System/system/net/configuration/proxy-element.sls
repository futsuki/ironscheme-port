(library (system net configuration proxy-element)
  (export new
          is?
          proxy-element?
          auto-detect-get
          auto-detect-set!
          auto-detect-update!
          bypass-on-local-get
          bypass-on-local-set!
          bypass-on-local-update!
          proxy-address-get
          proxy-address-set!
          proxy-address-update!
          script-location-get
          script-location-set!
          script-location-update!
          use-system-default-get
          use-system-default-set!
          use-system-default-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Configuration.ProxyElement a ...)))))
  (define (is? a) (clr-is System.Net.Configuration.ProxyElement a))
  (define (proxy-element? a)
    (clr-is System.Net.Configuration.ProxyElement a))
  (define-field-port
    auto-detect-get
    auto-detect-set!
    auto-detect-update!
    (property:)
    System.Net.Configuration.ProxyElement
    AutoDetect
    System.Net.Configuration.ProxyElement+AutoDetectValues)
  (define-field-port
    bypass-on-local-get
    bypass-on-local-set!
    bypass-on-local-update!
    (property:)
    System.Net.Configuration.ProxyElement
    BypassOnLocal
    System.Net.Configuration.ProxyElement+BypassOnLocalValues)
  (define-field-port
    proxy-address-get
    proxy-address-set!
    proxy-address-update!
    (property:)
    System.Net.Configuration.ProxyElement
    ProxyAddress
    System.Uri)
  (define-field-port
    script-location-get
    script-location-set!
    script-location-update!
    (property:)
    System.Net.Configuration.ProxyElement
    ScriptLocation
    System.Uri)
  (define-field-port
    use-system-default-get
    use-system-default-set!
    use-system-default-update!
    (property:)
    System.Net.Configuration.ProxyElement
    UseSystemDefault
    System.Net.Configuration.ProxyElement+UseSystemDefaultValues))
