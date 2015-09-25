(library (system security cryptography descrypto-service-provider)
  (export new
          is?
          descrypto-service-provider?
          create-decryptor
          create-encryptor
          generate-iv
          generate-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.DESCryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.DESCryptoServiceProvider a))
  (define (descrypto-service-provider? a)
    (clr-is System.Security.Cryptography.DESCryptoServiceProvider a))
  (define-method-port
    create-decryptor
    System.Security.Cryptography.DESCryptoServiceProvider
    CreateDecryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    create-encryptor
    System.Security.Cryptography.DESCryptoServiceProvider
    CreateEncryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    generate-iv
    System.Security.Cryptography.DESCryptoServiceProvider
    GenerateIV
    (System.Void))
  (define-method-port
    generate-key
    System.Security.Cryptography.DESCryptoServiceProvider
    GenerateKey
    (System.Void)))
