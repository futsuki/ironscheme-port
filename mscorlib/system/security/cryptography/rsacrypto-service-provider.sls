(library (system security cryptography rsacrypto-service-provider)
  (export new
          is?
          rsacrypto-service-provider?
          import-csp-blob
          import-parameters
          sign-data
          sign-hash
          encrypt-value
          encrypt
          verify-hash?
          export-csp-blob
          verify-data?
          decrypt
          decrypt-value
          export-parameters
          use-machine-key-store?-get
          use-machine-key-store?-set!
          use-machine-key-store?-update!
          key-exchange-algorithm
          key-size
          persist-key-in-csp?-get
          persist-key-in-csp?-set!
          persist-key-in-csp?-update!
          public-only?
          signature-algorithm
          csp-key-container-info)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RSACryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.RSACryptoServiceProvider a))
  (define (rsacrypto-service-provider? a)
    (clr-is System.Security.Cryptography.RSACryptoServiceProvider a))
  (define-method-port
    import-csp-blob
    System.Security.Cryptography.RSACryptoServiceProvider
    ImportCspBlob
    (System.Void System.Byte[]))
  (define-method-port
    import-parameters
    System.Security.Cryptography.RSACryptoServiceProvider
    ImportParameters
    (System.Void System.Security.Cryptography.RSAParameters))
  (define-method-port
    sign-data
    System.Security.Cryptography.RSACryptoServiceProvider
    SignData
    (System.Byte[]
      System.Byte[]
      System.Int32
      System.Int32
      System.Object)
    (System.Byte[] System.IO.Stream System.Object)
    (System.Byte[] System.Byte[] System.Object))
  (define-method-port
    sign-hash
    System.Security.Cryptography.RSACryptoServiceProvider
    SignHash
    (System.Byte[] System.Byte[] System.String))
  (define-method-port
    encrypt-value
    System.Security.Cryptography.RSACryptoServiceProvider
    EncryptValue
    (System.Byte[] System.Byte[]))
  (define-method-port
    encrypt
    System.Security.Cryptography.RSACryptoServiceProvider
    Encrypt
    (System.Byte[] System.Byte[] System.Boolean))
  (define-method-port
    verify-hash?
    System.Security.Cryptography.RSACryptoServiceProvider
    VerifyHash
    (System.Boolean System.Byte[] System.String System.Byte[]))
  (define-method-port
    export-csp-blob
    System.Security.Cryptography.RSACryptoServiceProvider
    ExportCspBlob
    (System.Byte[] System.Boolean))
  (define-method-port
    verify-data?
    System.Security.Cryptography.RSACryptoServiceProvider
    VerifyData
    (System.Boolean System.Byte[] System.Object System.Byte[]))
  (define-method-port
    decrypt
    System.Security.Cryptography.RSACryptoServiceProvider
    Decrypt
    (System.Byte[] System.Byte[] System.Boolean))
  (define-method-port
    decrypt-value
    System.Security.Cryptography.RSACryptoServiceProvider
    DecryptValue
    (System.Byte[] System.Byte[]))
  (define-method-port
    export-parameters
    System.Security.Cryptography.RSACryptoServiceProvider
    ExportParameters
    (System.Security.Cryptography.RSAParameters System.Boolean))
  (define-field-port
    use-machine-key-store?-get
    use-machine-key-store?-set!
    use-machine-key-store?-update!
    (static: property:)
    System.Security.Cryptography.RSACryptoServiceProvider
    UseMachineKeyStore
    System.Boolean)
  (define-field-port
    key-exchange-algorithm
    #f
    #f
    (property:)
    System.Security.Cryptography.RSACryptoServiceProvider
    KeyExchangeAlgorithm
    System.String)
  (define-field-port
    key-size
    #f
    #f
    (property:)
    System.Security.Cryptography.RSACryptoServiceProvider
    KeySize
    System.Int32)
  (define-field-port
    persist-key-in-csp?-get
    persist-key-in-csp?-set!
    persist-key-in-csp?-update!
    (property:)
    System.Security.Cryptography.RSACryptoServiceProvider
    PersistKeyInCsp
    System.Boolean)
  (define-field-port
    public-only?
    #f
    #f
    (property:)
    System.Security.Cryptography.RSACryptoServiceProvider
    PublicOnly
    System.Boolean)
  (define-field-port
    signature-algorithm
    #f
    #f
    (property:)
    System.Security.Cryptography.RSACryptoServiceProvider
    SignatureAlgorithm
    System.String)
  (define-field-port
    csp-key-container-info
    #f
    #f
    (property:)
    System.Security.Cryptography.RSACryptoServiceProvider
    CspKeyContainerInfo
    System.Security.Cryptography.CspKeyContainerInfo))
