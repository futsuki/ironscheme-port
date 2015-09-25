(library (mono security cryptography dsamanaged)
  (export new
          is?
          dsamanaged?
          verify-signature?
          import-parameters
          create-signature
          export-parameters
          key-size
          key-exchange-algorithm
          public-only?
          signature-algorithm)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Security.Cryptography.DSAManaged a ...)))))
  (define (is? a) (clr-is Mono.Security.Cryptography.DSAManaged a))
  (define (dsamanaged? a)
    (clr-is Mono.Security.Cryptography.DSAManaged a))
  (define-method-port
    verify-signature?
    Mono.Security.Cryptography.DSAManaged
    VerifySignature
    (System.Boolean System.Byte[] System.Byte[]))
  (define-method-port
    import-parameters
    Mono.Security.Cryptography.DSAManaged
    ImportParameters
    (System.Void System.Security.Cryptography.DSAParameters))
  (define-method-port
    create-signature
    Mono.Security.Cryptography.DSAManaged
    CreateSignature
    (System.Byte[] System.Byte[]))
  (define-method-port
    export-parameters
    Mono.Security.Cryptography.DSAManaged
    ExportParameters
    (System.Security.Cryptography.DSAParameters System.Boolean))
  (define-field-port
    key-size
    #f
    #f
    (property:)
    Mono.Security.Cryptography.DSAManaged
    KeySize
    System.Int32)
  (define-field-port
    key-exchange-algorithm
    #f
    #f
    (property:)
    Mono.Security.Cryptography.DSAManaged
    KeyExchangeAlgorithm
    System.String)
  (define-field-port
    public-only?
    #f
    #f
    (property:)
    Mono.Security.Cryptography.DSAManaged
    PublicOnly
    System.Boolean)
  (define-field-port
    signature-algorithm
    #f
    #f
    (property:)
    Mono.Security.Cryptography.DSAManaged
    SignatureAlgorithm
    System.String))
