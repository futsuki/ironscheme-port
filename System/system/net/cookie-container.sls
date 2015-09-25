(library (system net cookie-container)
  (export new
          is?
          cookie-container?
          get-cookies
          get-cookie-header
          add
          set-cookies
          default-cookie-length-limit
          default-cookie-limit
          default-per-domain-cookie-limit
          count
          capacity-get
          capacity-set!
          capacity-update!
          max-cookie-size-get
          max-cookie-size-set!
          max-cookie-size-update!
          per-domain-capacity-get
          per-domain-capacity-set!
          per-domain-capacity-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.CookieContainer a ...)))))
  (define (is? a) (clr-is System.Net.CookieContainer a))
  (define (cookie-container? a) (clr-is System.Net.CookieContainer a))
  (define-method-port
    get-cookies
    System.Net.CookieContainer
    GetCookies
    (System.Net.CookieCollection System.Uri))
  (define-method-port
    get-cookie-header
    System.Net.CookieContainer
    GetCookieHeader
    (System.String System.Uri))
  (define-method-port
    add
    System.Net.CookieContainer
    Add
    (System.Void System.Uri System.Net.CookieCollection)
    (System.Void System.Uri System.Net.Cookie)
    (System.Void System.Net.CookieCollection)
    (System.Void System.Net.Cookie))
  (define-method-port
    set-cookies
    System.Net.CookieContainer
    SetCookies
    (System.Void System.Uri System.String))
  (define-field-port
    default-cookie-length-limit
    #f
    #f
    (static:)
    System.Net.CookieContainer
    DefaultCookieLengthLimit
    System.Int32)
  (define-field-port
    default-cookie-limit
    #f
    #f
    (static:)
    System.Net.CookieContainer
    DefaultCookieLimit
    System.Int32)
  (define-field-port
    default-per-domain-cookie-limit
    #f
    #f
    (static:)
    System.Net.CookieContainer
    DefaultPerDomainCookieLimit
    System.Int32)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Net.CookieContainer
    Count
    System.Int32)
  (define-field-port
    capacity-get
    capacity-set!
    capacity-update!
    (property:)
    System.Net.CookieContainer
    Capacity
    System.Int32)
  (define-field-port
    max-cookie-size-get
    max-cookie-size-set!
    max-cookie-size-update!
    (property:)
    System.Net.CookieContainer
    MaxCookieSize
    System.Int32)
  (define-field-port
    per-domain-capacity-get
    per-domain-capacity-set!
    per-domain-capacity-update!
    (property:)
    System.Net.CookieContainer
    PerDomainCapacity
    System.Int32))
