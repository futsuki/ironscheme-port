(library (mono security cryptography crypto-convert)
  (export is? crypto-convert? from-capi-key-blob)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.Cryptography.CryptoConvert a))
  (define (crypto-convert? a)
    (clr-is Mono.Security.Cryptography.CryptoConvert a))
  (define-method-port
    from-capi-key-blob
    Mono.Security.Cryptography.CryptoConvert
    FromCapiKeyBlob
    (static:
      System.Security.Cryptography.RSA
      System.Byte[]
      System.Int32)
    (static: System.Security.Cryptography.RSA System.Byte[])))
