(library (system
          security
          cryptography
          rsapkcs1-sha1-signature-description)
  (export new
          is?
          rsapkcs1-sha1-signature-description?
          create-deformatter)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RSAPKCS1SHA1SignatureDescription
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.RSAPKCS1SHA1SignatureDescription
      a))
  (define (rsapkcs1-sha1-signature-description? a)
    (clr-is
      System.Security.Cryptography.RSAPKCS1SHA1SignatureDescription
      a))
  (define-method-port
    create-deformatter
    System.Security.Cryptography.RSAPKCS1SHA1SignatureDescription
    CreateDeformatter
    (System.Security.Cryptography.AsymmetricSignatureDeformatter
      System.Security.Cryptography.AsymmetricAlgorithm)))
