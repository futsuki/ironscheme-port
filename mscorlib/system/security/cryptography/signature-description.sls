(library (system security cryptography signature-description)
  (export new
          is?
          signature-description?
          create-formatter
          create-digest
          create-deformatter
          deformatter-algorithm-get
          deformatter-algorithm-set!
          deformatter-algorithm-update!
          digest-algorithm-get
          digest-algorithm-set!
          digest-algorithm-update!
          formatter-algorithm-get
          formatter-algorithm-set!
          formatter-algorithm-update!
          key-algorithm-get
          key-algorithm-set!
          key-algorithm-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.SignatureDescription
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.SignatureDescription a))
  (define (signature-description? a)
    (clr-is System.Security.Cryptography.SignatureDescription a))
  (define-method-port
    create-formatter
    System.Security.Cryptography.SignatureDescription
    CreateFormatter
    (System.Security.Cryptography.AsymmetricSignatureFormatter
      System.Security.Cryptography.AsymmetricAlgorithm))
  (define-method-port
    create-digest
    System.Security.Cryptography.SignatureDescription
    CreateDigest
    (System.Security.Cryptography.HashAlgorithm))
  (define-method-port
    create-deformatter
    System.Security.Cryptography.SignatureDescription
    CreateDeformatter
    (System.Security.Cryptography.AsymmetricSignatureDeformatter
      System.Security.Cryptography.AsymmetricAlgorithm))
  (define-field-port
    deformatter-algorithm-get
    deformatter-algorithm-set!
    deformatter-algorithm-update!
    (property:)
    System.Security.Cryptography.SignatureDescription
    DeformatterAlgorithm
    System.String)
  (define-field-port
    digest-algorithm-get
    digest-algorithm-set!
    digest-algorithm-update!
    (property:)
    System.Security.Cryptography.SignatureDescription
    DigestAlgorithm
    System.String)
  (define-field-port
    formatter-algorithm-get
    formatter-algorithm-set!
    formatter-algorithm-update!
    (property:)
    System.Security.Cryptography.SignatureDescription
    FormatterAlgorithm
    System.String)
  (define-field-port
    key-algorithm-get
    key-algorithm-set!
    key-algorithm-update!
    (property:)
    System.Security.Cryptography.SignatureDescription
    KeyAlgorithm
    System.String))
