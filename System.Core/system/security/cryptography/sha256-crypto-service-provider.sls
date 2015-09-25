(library (system security cryptography sha256-crypto-service-provider)
  (export new is? sha256-crypto-service-provider? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.SHA256CryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.SHA256CryptoServiceProvider a))
  (define (sha256-crypto-service-provider? a)
    (clr-is System.Security.Cryptography.SHA256CryptoServiceProvider a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA256CryptoServiceProvider
    Initialize
    (System.Void)))
