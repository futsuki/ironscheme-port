(library (system security cryptography mask-generation-method)
  (export is? mask-generation-method? generate-mask)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.MaskGenerationMethod a))
  (define (mask-generation-method? a)
    (clr-is System.Security.Cryptography.MaskGenerationMethod a))
  (define-method-port
    generate-mask
    System.Security.Cryptography.MaskGenerationMethod
    GenerateMask
    (System.Byte[] System.Byte[] System.Int32)))
