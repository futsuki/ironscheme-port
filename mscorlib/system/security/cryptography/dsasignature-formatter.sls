(library (system security cryptography dsasignature-formatter)
  (export new
          is?
          dsasignature-formatter?
          set-hash-algorithm
          create-signature
          set-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.DSASignatureFormatter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.DSASignatureFormatter a))
  (define (dsasignature-formatter? a)
    (clr-is System.Security.Cryptography.DSASignatureFormatter a))
  (define-method-port
    set-hash-algorithm
    System.Security.Cryptography.DSASignatureFormatter
    SetHashAlgorithm
    (System.Void System.String))
  (define-method-port
    create-signature
    System.Security.Cryptography.DSASignatureFormatter
    CreateSignature
    (System.Byte[] System.Byte[]))
  (define-method-port
    set-key
    System.Security.Cryptography.DSASignatureFormatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm)))
