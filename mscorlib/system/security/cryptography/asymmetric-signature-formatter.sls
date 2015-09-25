(library (system security cryptography asymmetric-signature-formatter)
  (export is?
          asymmetric-signature-formatter?
          set-hash-algorithm
          create-signature
          set-key)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.AsymmetricSignatureFormatter
      a))
  (define (asymmetric-signature-formatter? a)
    (clr-is
      System.Security.Cryptography.AsymmetricSignatureFormatter
      a))
  (define-method-port
    set-hash-algorithm
    System.Security.Cryptography.AsymmetricSignatureFormatter
    SetHashAlgorithm
    (System.Void System.String))
  (define-method-port
    create-signature
    System.Security.Cryptography.AsymmetricSignatureFormatter
    CreateSignature
    (System.Byte[] System.Security.Cryptography.HashAlgorithm)
    (System.Byte[] System.Byte[]))
  (define-method-port
    set-key
    System.Security.Cryptography.AsymmetricSignatureFormatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm)))
