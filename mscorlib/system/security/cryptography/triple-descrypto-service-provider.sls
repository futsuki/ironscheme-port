(library (system
          security
          cryptography
          triple-descrypto-service-provider)
  (export new
          is?
          triple-descrypto-service-provider?
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
             System.Security.Cryptography.TripleDESCryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.TripleDESCryptoServiceProvider
      a))
  (define (triple-descrypto-service-provider? a)
    (clr-is
      System.Security.Cryptography.TripleDESCryptoServiceProvider
      a))
  (define-method-port
    create-decryptor
    System.Security.Cryptography.TripleDESCryptoServiceProvider
    CreateDecryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    create-encryptor
    System.Security.Cryptography.TripleDESCryptoServiceProvider
    CreateEncryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    generate-iv
    System.Security.Cryptography.TripleDESCryptoServiceProvider
    GenerateIV
    (System.Void))
  (define-method-port
    generate-key
    System.Security.Cryptography.TripleDESCryptoServiceProvider
    GenerateKey
    (System.Void)))
