(library (system security cryptography pkcs1-mask-generation-method)
  (export new
          is?
          pkcs1-mask-generation-method?
          generate-mask
          hash-name-get
          hash-name-set!
          hash-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.PKCS1MaskGenerationMethod
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.PKCS1MaskGenerationMethod a))
  (define (pkcs1-mask-generation-method? a)
    (clr-is System.Security.Cryptography.PKCS1MaskGenerationMethod a))
  (define-method-port
    generate-mask
    System.Security.Cryptography.PKCS1MaskGenerationMethod
    GenerateMask
    (System.Byte[] System.Byte[] System.Int32))
  (define-field-port
    hash-name-get
    hash-name-set!
    hash-name-update!
    (property:)
    System.Security.Cryptography.PKCS1MaskGenerationMethod
    HashName
    System.String))
