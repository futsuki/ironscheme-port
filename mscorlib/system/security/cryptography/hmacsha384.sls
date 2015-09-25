(library (system security cryptography hmacsha384)
  (export new
          is?
          hmacsha384?
          produce-legacy-hmac-values?-get
          produce-legacy-hmac-values?-set!
          produce-legacy-hmac-values?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.HMACSHA384 a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.HMACSHA384 a))
  (define (hmacsha384? a)
    (clr-is System.Security.Cryptography.HMACSHA384 a))
  (define-field-port
    produce-legacy-hmac-values?-get
    produce-legacy-hmac-values?-set!
    produce-legacy-hmac-values?-update!
    (property:)
    System.Security.Cryptography.HMACSHA384
    ProduceLegacyHmacValues
    System.Boolean))
