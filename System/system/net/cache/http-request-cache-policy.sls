(library (system net cache http-request-cache-policy)
  (export new
          is?
          http-request-cache-policy?
          to-string
          cache-sync-date
          level
          max-age
          max-stale
          min-fresh)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Cache.HttpRequestCachePolicy a ...)))))
  (define (is? a) (clr-is System.Net.Cache.HttpRequestCachePolicy a))
  (define (http-request-cache-policy? a)
    (clr-is System.Net.Cache.HttpRequestCachePolicy a))
  (define-method-port
    to-string
    System.Net.Cache.HttpRequestCachePolicy
    ToString
    (System.String))
  (define-field-port
    cache-sync-date
    #f
    #f
    (property:)
    System.Net.Cache.HttpRequestCachePolicy
    CacheSyncDate
    System.DateTime)
  (define-field-port
    level
    #f
    #f
    (property:)
    System.Net.Cache.HttpRequestCachePolicy
    Level
    System.Net.Cache.HttpRequestCacheLevel)
  (define-field-port
    max-age
    #f
    #f
    (property:)
    System.Net.Cache.HttpRequestCachePolicy
    MaxAge
    System.TimeSpan)
  (define-field-port
    max-stale
    #f
    #f
    (property:)
    System.Net.Cache.HttpRequestCachePolicy
    MaxStale
    System.TimeSpan)
  (define-field-port
    min-fresh
    #f
    #f
    (property:)
    System.Net.Cache.HttpRequestCachePolicy
    MinFresh
    System.TimeSpan))
