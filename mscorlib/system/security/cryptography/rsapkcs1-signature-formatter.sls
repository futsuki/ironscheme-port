(library (system security cryptography rsapkcs1-signature-formatter)
  (export new
          is?
          rsapkcs1-signature-formatter?
          set-hash-algorithm
          create-signature
          set-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RSAPKCS1SignatureFormatter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.RSAPKCS1SignatureFormatter a))
  (define (rsapkcs1-signature-formatter? a)
    (clr-is System.Security.Cryptography.RSAPKCS1SignatureFormatter a))
  (define-method-port
    set-hash-algorithm
    System.Security.Cryptography.RSAPKCS1SignatureFormatter
    SetHashAlgorithm
    (System.Void System.String))
  (define-method-port
    create-signature
    System.Security.Cryptography.RSAPKCS1SignatureFormatter
    CreateSignature
    (System.Byte[] System.Byte[]))
  (define-method-port
    set-key
    System.Security.Cryptography.RSAPKCS1SignatureFormatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm)))
