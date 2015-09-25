(library (system security cryptography rngcrypto-service-provider)
  (export new
          is?
          rngcrypto-service-provider?
          get-bytes
          get-non-zero-bytes)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RNGCryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.RNGCryptoServiceProvider a))
  (define (rngcrypto-service-provider? a)
    (clr-is System.Security.Cryptography.RNGCryptoServiceProvider a))
  (define-method-port
    get-bytes
    System.Security.Cryptography.RNGCryptoServiceProvider
    GetBytes
    (System.Void System.Byte[]))
  (define-method-port
    get-non-zero-bytes
    System.Security.Cryptography.RNGCryptoServiceProvider
    GetNonZeroBytes
    (System.Void System.Byte[])))
