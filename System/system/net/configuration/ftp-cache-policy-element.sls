(library (system net configuration ftp-cache-policy-element)
  (export new
          is?
          ftp-cache-policy-element?
          policy-level-get
          policy-level-set!
          policy-level-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.FtpCachePolicyElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.Configuration.FtpCachePolicyElement a))
  (define (ftp-cache-policy-element? a)
    (clr-is System.Net.Configuration.FtpCachePolicyElement a))
  (define-field-port
    policy-level-get
    policy-level-set!
    policy-level-update!
    (property:)
    System.Net.Configuration.FtpCachePolicyElement
    PolicyLevel
    System.Net.Cache.RequestCacheLevel))
