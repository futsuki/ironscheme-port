(library (system net configuration request-caching-section)
  (export new
          is?
          request-caching-section?
          default-ftp-cache-policy
          default-http-cache-policy
          default-policy-level-get
          default-policy-level-set!
          default-policy-level-update!
          disable-all-caching?-get
          disable-all-caching?-set!
          disable-all-caching?-update!
          is-private-cache?-get
          is-private-cache?-set!
          is-private-cache?-update!
          unspecified-maximum-age-get
          unspecified-maximum-age-set!
          unspecified-maximum-age-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.RequestCachingSection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.RequestCachingSection a))
  (define (request-caching-section? a)
    (clr-is System.Net.Configuration.RequestCachingSection a))
  (define-field-port
    default-ftp-cache-policy
    #f
    #f
    (property:)
    System.Net.Configuration.RequestCachingSection
    DefaultFtpCachePolicy
    System.Net.Configuration.FtpCachePolicyElement)
  (define-field-port
    default-http-cache-policy
    #f
    #f
    (property:)
    System.Net.Configuration.RequestCachingSection
    DefaultHttpCachePolicy
    System.Net.Configuration.HttpCachePolicyElement)
  (define-field-port
    default-policy-level-get
    default-policy-level-set!
    default-policy-level-update!
    (property:)
    System.Net.Configuration.RequestCachingSection
    DefaultPolicyLevel
    System.Net.Cache.RequestCacheLevel)
  (define-field-port
    disable-all-caching?-get
    disable-all-caching?-set!
    disable-all-caching?-update!
    (property:)
    System.Net.Configuration.RequestCachingSection
    DisableAllCaching
    System.Boolean)
  (define-field-port
    is-private-cache?-get
    is-private-cache?-set!
    is-private-cache?-update!
    (property:)
    System.Net.Configuration.RequestCachingSection
    IsPrivateCache
    System.Boolean)
  (define-field-port
    unspecified-maximum-age-get
    unspecified-maximum-age-set!
    unspecified-maximum-age-update!
    (property:)
    System.Net.Configuration.RequestCachingSection
    UnspecifiedMaximumAge
    System.TimeSpan))
