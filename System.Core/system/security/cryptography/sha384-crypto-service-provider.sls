(library (system security cryptography sha384-crypto-service-provider)
  (export new is? sha384-crypto-service-provider? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.SHA384CryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.SHA384CryptoServiceProvider a))
  (define (sha384-crypto-service-provider? a)
    (clr-is System.Security.Cryptography.SHA384CryptoServiceProvider a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA384CryptoServiceProvider
    Initialize
    (System.Void)))
