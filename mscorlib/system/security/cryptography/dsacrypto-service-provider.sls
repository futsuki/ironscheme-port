(library (system security cryptography dsacrypto-service-provider)
  (export new
          is?
          dsacrypto-service-provider?
          verify-signature?
          import-parameters
          sign-data
          sign-hash
          create-signature
          verify-data?
          verify-hash?
          export-csp-blob
          export-parameters
          import-csp-blob
          key-exchange-algorithm
          key-size
          persist-key-in-csp?-get
          persist-key-in-csp?-set!
          persist-key-in-csp?-update!
          public-only?
          signature-algorithm
          use-machine-key-store?-get
          use-machine-key-store?-set!
          use-machine-key-store?-update!
          csp-key-container-info)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.DSACryptoServiceProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.DSACryptoServiceProvider a))
  (define (dsacrypto-service-provider? a)
    (clr-is System.Security.Cryptography.DSACryptoServiceProvider a))
  (define-method-port
    verify-signature?
    System.Security.Cryptography.DSACryptoServiceProvider
    VerifySignature
    (System.Boolean System.Byte[] System.Byte[]))
  (define-method-port
    import-parameters
    System.Security.Cryptography.DSACryptoServiceProvider
    ImportParameters
    (System.Void System.Security.Cryptography.DSAParameters))
  (define-method-port
    sign-data
    System.Security.Cryptography.DSACryptoServiceProvider
    SignData
    (System.Byte[] System.IO.Stream)
    (System.Byte[] System.Byte[] System.Int32 System.Int32)
    (System.Byte[] System.Byte[]))
  (define-method-port
    sign-hash
    System.Security.Cryptography.DSACryptoServiceProvider
    SignHash
    (System.Byte[] System.Byte[] System.String))
  (define-method-port
    create-signature
    System.Security.Cryptography.DSACryptoServiceProvider
    CreateSignature
    (System.Byte[] System.Byte[]))
  (define-method-port
    verify-data?
    System.Security.Cryptography.DSACryptoServiceProvider
    VerifyData
    (System.Boolean System.Byte[] System.Byte[]))
  (define-method-port
    verify-hash?
    System.Security.Cryptography.DSACryptoServiceProvider
    VerifyHash
    (System.Boolean System.Byte[] System.String System.Byte[]))
  (define-method-port
    export-csp-blob
    System.Security.Cryptography.DSACryptoServiceProvider
    ExportCspBlob
    (System.Byte[] System.Boolean))
  (define-method-port
    export-parameters
    System.Security.Cryptography.DSACryptoServiceProvider
    ExportParameters
    (System.Security.Cryptography.DSAParameters System.Boolean))
  (define-method-port
    import-csp-blob
    System.Security.Cryptography.DSACryptoServiceProvider
    ImportCspBlob
    (System.Void System.Byte[]))
  (define-field-port
    key-exchange-algorithm
    #f
    #f
    (property:)
    System.Security.Cryptography.DSACryptoServiceProvider
    KeyExchangeAlgorithm
    System.String)
  (define-field-port
    key-size
    #f
    #f
    (property:)
    System.Security.Cryptography.DSACryptoServiceProvider
    KeySize
    System.Int32)
  (define-field-port
    persist-key-in-csp?-get
    persist-key-in-csp?-set!
    persist-key-in-csp?-update!
    (property:)
    System.Security.Cryptography.DSACryptoServiceProvider
    PersistKeyInCsp
    System.Boolean)
  (define-field-port
    public-only?
    #f
    #f
    (property:)
    System.Security.Cryptography.DSACryptoServiceProvider
    PublicOnly
    System.Boolean)
  (define-field-port
    signature-algorithm
    #f
    #f
    (property:)
    System.Security.Cryptography.DSACryptoServiceProvider
    SignatureAlgorithm
    System.String)
  (define-field-port
    use-machine-key-store?-get
    use-machine-key-store?-set!
    use-machine-key-store?-update!
    (static: property:)
    System.Security.Cryptography.DSACryptoServiceProvider
    UseMachineKeyStore
    System.Boolean)
  (define-field-port
    csp-key-container-info
    #f
    #f
    (property:)
    System.Security.Cryptography.DSACryptoServiceProvider
    CspKeyContainerInfo
    System.Security.Cryptography.CspKeyContainerInfo))
