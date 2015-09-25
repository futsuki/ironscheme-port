(library (system security cryptography destransform)
  (export is? destransform? process-block)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.DESTransform a))
  (define (destransform? a)
    (clr-is System.Security.Cryptography.DESTransform a))
  (define-method-port
    process-block
    System.Security.Cryptography.DESTransform
    ProcessBlock
    (System.Void System.Byte[] System.Byte[])))
