(library (system security cryptography rc2-crypto-service-provider)
  (export new
          is?
          rc2-crypto-service-provider?
          create-decryptor
          create-encryptor
          generate-iv
          generate-key
          effective-key-size-get
          effective-key-size-set!
          effective-key-size-update!
          use-salt?-get
          use-salt?-set!
          use-salt?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RC2CryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.RC2CryptoServiceProvider a))
  (define (rc2-crypto-service-provider? a)
    (clr-is System.Security.Cryptography.RC2CryptoServiceProvider a))
  (define-method-port
    create-decryptor
    System.Security.Cryptography.RC2CryptoServiceProvider
    CreateDecryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    create-encryptor
    System.Security.Cryptography.RC2CryptoServiceProvider
    CreateEncryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    generate-iv
    System.Security.Cryptography.RC2CryptoServiceProvider
    GenerateIV
    (System.Void))
  (define-method-port
    generate-key
    System.Security.Cryptography.RC2CryptoServiceProvider
    GenerateKey
    (System.Void))
  (define-field-port
    effective-key-size-get
    effective-key-size-set!
    effective-key-size-update!
    (property:)
    System.Security.Cryptography.RC2CryptoServiceProvider
    EffectiveKeySize
    System.Int32)
  (define-field-port
    use-salt?-get
    use-salt?-set!
    use-salt?-update!
    (property:)
    System.Security.Cryptography.RC2CryptoServiceProvider
    UseSalt
    System.Boolean))
