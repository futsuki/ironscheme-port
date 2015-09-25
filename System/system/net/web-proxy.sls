(library (system net web-proxy)
  (export new
          is?
          web-proxy?
          get-default-proxy
          get-proxy
          is-bypassed?
          address-get
          address-set!
          address-update!
          bypass-array-list
          bypass-list-get
          bypass-list-set!
          bypass-list-update!
          bypass-proxy-on-local?-get
          bypass-proxy-on-local?-set!
          bypass-proxy-on-local?-update!
          credentials-get
          credentials-set!
          credentials-update!
          use-default-credentials?-get
          use-default-credentials?-set!
          use-default-credentials?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebProxy a ...)))))
  (define (is? a) (clr-is System.Net.WebProxy a))
  (define (web-proxy? a) (clr-is System.Net.WebProxy a))
  (define-method-port
    get-default-proxy
    System.Net.WebProxy
    GetDefaultProxy
    (static: System.Net.WebProxy))
  (define-method-port
    get-proxy
    System.Net.WebProxy
    GetProxy
    (System.Uri System.Uri))
  (define-method-port
    is-bypassed?
    System.Net.WebProxy
    IsBypassed
    (System.Boolean System.Uri))
  (define-field-port
    address-get
    address-set!
    address-update!
    (property:)
    System.Net.WebProxy
    Address
    System.Uri)
  (define-field-port
    bypass-array-list
    #f
    #f
    (property:)
    System.Net.WebProxy
    BypassArrayList
    System.Collections.ArrayList)
  (define-field-port
    bypass-list-get
    bypass-list-set!
    bypass-list-update!
    (property:)
    System.Net.WebProxy
    BypassList
    System.String[])
  (define-field-port
    bypass-proxy-on-local?-get
    bypass-proxy-on-local?-set!
    bypass-proxy-on-local?-update!
    (property:)
    System.Net.WebProxy
    BypassProxyOnLocal
    System.Boolean)
  (define-field-port
    credentials-get
    credentials-set!
    credentials-update!
    (property:)
    System.Net.WebProxy
    Credentials
    System.Net.ICredentials)
  (define-field-port
    use-default-credentials?-get
    use-default-credentials?-set!
    use-default-credentials?-update!
    (property:)
    System.Net.WebProxy
    UseDefaultCredentials
    System.Boolean))
