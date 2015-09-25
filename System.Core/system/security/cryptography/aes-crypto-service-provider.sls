(library (system security cryptography aes-crypto-service-provider)
  (export new
          is?
          aes-crypto-service-provider?
          create-decryptor
          create-encryptor
          generate-iv
          generate-key
          iv-get
          iv-set!
          iv-update!
          key-get
          key-set!
          key-update!
          key-size-get
          key-size-set!
          key-size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.AesCryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.AesCryptoServiceProvider a))
  (define (aes-crypto-service-provider? a)
    (clr-is System.Security.Cryptography.AesCryptoServiceProvider a))
  (define-method-port
    create-decryptor
    System.Security.Cryptography.AesCryptoServiceProvider
    CreateDecryptor
    (System.Security.Cryptography.ICryptoTransform)
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    create-encryptor
    System.Security.Cryptography.AesCryptoServiceProvider
    CreateEncryptor
    (System.Security.Cryptography.ICryptoTransform)
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    generate-iv
    System.Security.Cryptography.AesCryptoServiceProvider
    GenerateIV
    (System.Void))
  (define-method-port
    generate-key
    System.Security.Cryptography.AesCryptoServiceProvider
    GenerateKey
    (System.Void))
  (define-field-port
    iv-get
    iv-set!
    iv-update!
    (property:)
    System.Security.Cryptography.AesCryptoServiceProvider
    IV
    System.Byte[])
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    System.Security.Cryptography.AesCryptoServiceProvider
    Key
    System.Byte[])
  (define-field-port
    key-size-get
    key-size-set!
    key-size-update!
    (property:)
    System.Security.Cryptography.AesCryptoServiceProvider
    KeySize
    System.Int32))
