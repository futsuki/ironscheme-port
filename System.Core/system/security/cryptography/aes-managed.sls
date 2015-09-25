(library (system security cryptography aes-managed)
  (export new
          is?
          aes-managed?
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
         #'(clr-new System.Security.Cryptography.AesManaged a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.AesManaged a))
  (define (aes-managed? a)
    (clr-is System.Security.Cryptography.AesManaged a))
  (define-method-port
    create-decryptor
    System.Security.Cryptography.AesManaged
    CreateDecryptor
    (System.Security.Cryptography.ICryptoTransform)
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    create-encryptor
    System.Security.Cryptography.AesManaged
    CreateEncryptor
    (System.Security.Cryptography.ICryptoTransform)
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[]))
  (define-method-port
    generate-iv
    System.Security.Cryptography.AesManaged
    GenerateIV
    (System.Void))
  (define-method-port
    generate-key
    System.Security.Cryptography.AesManaged
    GenerateKey
    (System.Void))
  (define-field-port
    iv-get
    iv-set!
    iv-update!
    (property:)
    System.Security.Cryptography.AesManaged
    IV
    System.Byte[])
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    System.Security.Cryptography.AesManaged
    Key
    System.Byte[])
  (define-field-port
    key-size-get
    key-size-set!
    key-size-update!
    (property:)
    System.Security.Cryptography.AesManaged
    KeySize
    System.Int32))
