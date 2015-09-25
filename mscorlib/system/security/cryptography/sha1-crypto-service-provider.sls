(library (system security cryptography sha1-crypto-service-provider)
  (export new is? sha1-crypto-service-provider? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.SHA1CryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.SHA1CryptoServiceProvider a))
  (define (sha1-crypto-service-provider? a)
    (clr-is System.Security.Cryptography.SHA1CryptoServiceProvider a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA1CryptoServiceProvider
    Initialize
    (System.Void)))
