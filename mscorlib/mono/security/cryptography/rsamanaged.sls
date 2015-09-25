(library (mono security cryptography rsamanaged)
  (export new
          is?
          rsamanaged?
          to-xml-string
          import-parameters
          encrypt-value
          decrypt-value
          export-parameters
          key-size
          key-exchange-algorithm
          public-only?
          signature-algorithm
          use-key-blinding?-get
          use-key-blinding?-set!
          use-key-blinding?-update!
          is-crt-possible?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Security.Cryptography.RSAManaged a ...)))))
  (define (is? a) (clr-is Mono.Security.Cryptography.RSAManaged a))
  (define (rsamanaged? a)
    (clr-is Mono.Security.Cryptography.RSAManaged a))
  (define-method-port
    to-xml-string
    Mono.Security.Cryptography.RSAManaged
    ToXmlString
    (System.String System.Boolean))
  (define-method-port
    import-parameters
    Mono.Security.Cryptography.RSAManaged
    ImportParameters
    (System.Void System.Security.Cryptography.RSAParameters))
  (define-method-port
    encrypt-value
    Mono.Security.Cryptography.RSAManaged
    EncryptValue
    (System.Byte[] System.Byte[]))
  (define-method-port
    decrypt-value
    Mono.Security.Cryptography.RSAManaged
    DecryptValue
    (System.Byte[] System.Byte[]))
  (define-method-port
    export-parameters
    Mono.Security.Cryptography.RSAManaged
    ExportParameters
    (System.Security.Cryptography.RSAParameters System.Boolean))
  (define-field-port
    key-size
    #f
    #f
    (property:)
    Mono.Security.Cryptography.RSAManaged
    KeySize
    System.Int32)
  (define-field-port
    key-exchange-algorithm
    #f
    #f
    (property:)
    Mono.Security.Cryptography.RSAManaged
    KeyExchangeAlgorithm
    System.String)
  (define-field-port
    public-only?
    #f
    #f
    (property:)
    Mono.Security.Cryptography.RSAManaged
    PublicOnly
    System.Boolean)
  (define-field-port
    signature-algorithm
    #f
    #f
    (property:)
    Mono.Security.Cryptography.RSAManaged
    SignatureAlgorithm
    System.String)
  (define-field-port
    use-key-blinding?-get
    use-key-blinding?-set!
    use-key-blinding?-update!
    (property:)
    Mono.Security.Cryptography.RSAManaged
    UseKeyBlinding
    System.Boolean)
  (define-field-port
    is-crt-possible?
    #f
    #f
    (property:)
    Mono.Security.Cryptography.RSAManaged
    IsCrtPossible
    System.Boolean))
