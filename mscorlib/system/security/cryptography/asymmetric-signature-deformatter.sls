(library (system security cryptography asymmetric-signature-deformatter)
  (export is?
          asymmetric-signature-deformatter?
          verify-signature?
          set-hash-algorithm
          set-key)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.AsymmetricSignatureDeformatter
      a))
  (define (asymmetric-signature-deformatter? a)
    (clr-is
      System.Security.Cryptography.AsymmetricSignatureDeformatter
      a))
  (define-method-port
    verify-signature?
    System.Security.Cryptography.AsymmetricSignatureDeformatter
    VerifySignature
    (System.Boolean
      System.Security.Cryptography.HashAlgorithm
      System.Byte[])
    (System.Boolean System.Byte[] System.Byte[]))
  (define-method-port
    set-hash-algorithm
    System.Security.Cryptography.AsymmetricSignatureDeformatter
    SetHashAlgorithm
    (System.Void System.String))
  (define-method-port
    set-key
    System.Security.Cryptography.AsymmetricSignatureDeformatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm)))
