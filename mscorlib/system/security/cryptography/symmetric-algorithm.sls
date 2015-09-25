(library (system security cryptography symmetric-algorithm)
  (export is?
          symmetric-algorithm?
          create-decryptor
          create
          create-encryptor
          generate-iv
          generate-key
          clear
          valid-key-size?
          block-size-get
          block-size-set!
          block-size-update!
          feedback-size-get
          feedback-size-set!
          feedback-size-update!
          iv-get
          iv-set!
          iv-update!
          key-get
          key-set!
          key-update!
          key-size-get
          key-size-set!
          key-size-update!
          legal-block-sizes
          legal-key-sizes
          mode-get
          mode-set!
          mode-update!
          padding-get
          padding-set!
          padding-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.SymmetricAlgorithm a))
  (define (symmetric-algorithm? a)
    (clr-is System.Security.Cryptography.SymmetricAlgorithm a))
  (define-method-port
    create-decryptor
    System.Security.Cryptography.SymmetricAlgorithm
    CreateDecryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[])
    (System.Security.Cryptography.ICryptoTransform))
  (define-method-port
    create
    System.Security.Cryptography.SymmetricAlgorithm
    Create
    (static:
      System.Security.Cryptography.SymmetricAlgorithm
      System.String)
    (static: System.Security.Cryptography.SymmetricAlgorithm))
  (define-method-port
    create-encryptor
    System.Security.Cryptography.SymmetricAlgorithm
    CreateEncryptor
    (System.Security.Cryptography.ICryptoTransform
      System.Byte[]
      System.Byte[])
    (System.Security.Cryptography.ICryptoTransform))
  (define-method-port
    generate-iv
    System.Security.Cryptography.SymmetricAlgorithm
    GenerateIV
    (System.Void))
  (define-method-port
    generate-key
    System.Security.Cryptography.SymmetricAlgorithm
    GenerateKey
    (System.Void))
  (define-method-port
    clear
    System.Security.Cryptography.SymmetricAlgorithm
    Clear
    (System.Void))
  (define-method-port
    valid-key-size?
    System.Security.Cryptography.SymmetricAlgorithm
    ValidKeySize
    (System.Boolean System.Int32))
  (define-field-port
    block-size-get
    block-size-set!
    block-size-update!
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    BlockSize
    System.Int32)
  (define-field-port
    feedback-size-get
    feedback-size-set!
    feedback-size-update!
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    FeedbackSize
    System.Int32)
  (define-field-port
    iv-get
    iv-set!
    iv-update!
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    IV
    System.Byte[])
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    Key
    System.Byte[])
  (define-field-port
    key-size-get
    key-size-set!
    key-size-update!
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    KeySize
    System.Int32)
  (define-field-port
    legal-block-sizes
    #f
    #f
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    LegalBlockSizes
    System.Security.Cryptography.KeySizes[])
  (define-field-port
    legal-key-sizes
    #f
    #f
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    LegalKeySizes
    System.Security.Cryptography.KeySizes[])
  (define-field-port
    mode-get
    mode-set!
    mode-update!
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    Mode
    System.Security.Cryptography.CipherMode)
  (define-field-port
    padding-get
    padding-set!
    padding-update!
    (property:)
    System.Security.Cryptography.SymmetricAlgorithm
    Padding
    System.Security.Cryptography.PaddingMode))