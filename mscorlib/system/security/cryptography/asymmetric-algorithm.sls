(library (system security cryptography asymmetric-algorithm)
  (export is?
          asymmetric-algorithm?
          from-xml-string
          create
          to-xml-string
          clear
          key-exchange-algorithm
          key-size-get
          key-size-set!
          key-size-update!
          legal-key-sizes
          signature-algorithm)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.AsymmetricAlgorithm a))
  (define (asymmetric-algorithm? a)
    (clr-is System.Security.Cryptography.AsymmetricAlgorithm a))
  (define-method-port
    from-xml-string
    System.Security.Cryptography.AsymmetricAlgorithm
    FromXmlString
    (System.Void System.String))
  (define-method-port
    create
    System.Security.Cryptography.AsymmetricAlgorithm
    Create
    (static:
      System.Security.Cryptography.AsymmetricAlgorithm
      System.String)
    (static: System.Security.Cryptography.AsymmetricAlgorithm))
  (define-method-port
    to-xml-string
    System.Security.Cryptography.AsymmetricAlgorithm
    ToXmlString
    (System.String System.Boolean))
  (define-method-port
    clear
    System.Security.Cryptography.AsymmetricAlgorithm
    Clear
    (System.Void))
  (define-field-port
    key-exchange-algorithm
    #f
    #f
    (property:)
    System.Security.Cryptography.AsymmetricAlgorithm
    KeyExchangeAlgorithm
    System.String)
  (define-field-port
    key-size-get
    key-size-set!
    key-size-update!
    (property:)
    System.Security.Cryptography.AsymmetricAlgorithm
    KeySize
    System.Int32)
  (define-field-port
    legal-key-sizes
    #f
    #f
    (property:)
    System.Security.Cryptography.AsymmetricAlgorithm
    LegalKeySizes
    System.Security.Cryptography.KeySizes[])
  (define-field-port
    signature-algorithm
    #f
    #f
    (property:)
    System.Security.Cryptography.AsymmetricAlgorithm
    SignatureAlgorithm
    System.String))
