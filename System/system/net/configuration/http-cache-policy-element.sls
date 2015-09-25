(library (system net configuration http-cache-policy-element)
  (export new
          is?
          http-cache-policy-element?
          maximum-age-get
          maximum-age-set!
          maximum-age-update!
          maximum-stale-get
          maximum-stale-set!
          maximum-stale-update!
          minimum-fresh-get
          minimum-fresh-set!
          minimum-fresh-update!
          policy-level-get
          policy-level-set!
          policy-level-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.HttpCachePolicyElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.HttpCachePolicyElement a))
  (define (http-cache-policy-element? a)
    (clr-is System.Net.Configuration.HttpCachePolicyElement a))
  (define-field-port
    maximum-age-get
    maximum-age-set!
    maximum-age-update!
    (property:)
    System.Net.Configuration.HttpCachePolicyElement
    MaximumAge
    System.TimeSpan)
  (define-field-port
    maximum-stale-get
    maximum-stale-set!
    maximum-stale-update!
    (property:)
    System.Net.Configuration.HttpCachePolicyElement
    MaximumStale
    System.TimeSpan)
  (define-field-port
    minimum-fresh-get
    minimum-fresh-set!
    minimum-fresh-update!
    (property:)
    System.Net.Configuration.HttpCachePolicyElement
    MinimumFresh
    System.TimeSpan)
  (define-field-port
    policy-level-get
    policy-level-set!
    policy-level-update!
    (property:)
    System.Net.Configuration.HttpCachePolicyElement
    PolicyLevel
    System.Net.Cache.HttpRequestCacheLevel))
