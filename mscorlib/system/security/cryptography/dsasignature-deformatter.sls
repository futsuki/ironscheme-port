(library (system security cryptography dsasignature-deformatter)
  (export new
          is?
          dsasignature-deformatter?
          verify-signature?
          set-hash-algorithm
          set-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.DSASignatureDeformatter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.DSASignatureDeformatter a))
  (define (dsasignature-deformatter? a)
    (clr-is System.Security.Cryptography.DSASignatureDeformatter a))
  (define-method-port
    verify-signature?
    System.Security.Cryptography.DSASignatureDeformatter
    VerifySignature
    (System.Boolean System.Byte[] System.Byte[]))
  (define-method-port
    set-hash-algorithm
    System.Security.Cryptography.DSASignatureDeformatter
    SetHashAlgorithm
    (System.Void System.String))
  (define-method-port
    set-key
    System.Security.Cryptography.DSASignatureDeformatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm)))
