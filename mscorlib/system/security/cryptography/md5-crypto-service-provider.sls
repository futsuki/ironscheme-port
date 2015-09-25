(library (system security cryptography md5-crypto-service-provider)
  (export new is? md5-crypto-service-provider? initialize)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.MD5CryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.MD5CryptoServiceProvider a))
  (define (md5-crypto-service-provider? a)
    (clr-is System.Security.Cryptography.MD5CryptoServiceProvider a))
  (define-method-port
    initialize
    System.Security.Cryptography.MD5CryptoServiceProvider
    Initialize
    (System.Void)))
