(library (system security cryptography rsapkcs1-signature-deformatter)
  (export new
          is?
          rsapkcs1-signature-deformatter?
          verify-signature?
          set-hash-algorithm
          set-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RSAPKCS1SignatureDeformatter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.RSAPKCS1SignatureDeformatter
      a))
  (define (rsapkcs1-signature-deformatter? a)
    (clr-is
      System.Security.Cryptography.RSAPKCS1SignatureDeformatter
      a))
  (define-method-port
    verify-signature?
    System.Security.Cryptography.RSAPKCS1SignatureDeformatter
    VerifySignature
    (System.Boolean System.Byte[] System.Byte[]))
  (define-method-port
    set-hash-algorithm
    System.Security.Cryptography.RSAPKCS1SignatureDeformatter
    SetHashAlgorithm
    (System.Void System.String))
  (define-method-port
    set-key
    System.Security.Cryptography.RSAPKCS1SignatureDeformatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm)))
