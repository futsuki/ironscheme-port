(library (system security cryptography hmacsha512)
  (export new
          is?
          hmacsha512?
          produce-legacy-hmac-values?-get
          produce-legacy-hmac-values?-set!
          produce-legacy-hmac-values?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.HMACSHA512 a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.HMACSHA512 a))
  (define (hmacsha512? a)
    (clr-is System.Security.Cryptography.HMACSHA512 a))
  (define-field-port
    produce-legacy-hmac-values?-get
    produce-legacy-hmac-values?-set!
    produce-legacy-hmac-values?-update!
    (property:)
    System.Security.Cryptography.HMACSHA512
    ProduceLegacyHmacValues
    System.Boolean))
