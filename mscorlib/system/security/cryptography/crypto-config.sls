(library (system security cryptography crypto-config)
  (export new
          is?
          crypto-config?
          create-from-name
          encode-oid
          map-name-to-oid)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.CryptoConfig a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.CryptoConfig a))
  (define (crypto-config? a)
    (clr-is System.Security.Cryptography.CryptoConfig a))
  (define-method-port
    create-from-name
    System.Security.Cryptography.CryptoConfig
    CreateFromName
    (static: System.Object System.String System.Object[])
    (static: System.Object System.String))
  (define-method-port
    encode-oid
    System.Security.Cryptography.CryptoConfig
    EncodeOID
    (static: System.Byte[] System.String))
  (define-method-port
    map-name-to-oid
    System.Security.Cryptography.CryptoConfig
    MapNameToOID
    (static: System.String System.String)))
