(library (system
          security
          cryptography
          rsapkcs1-key-exchange-deformatter)
  (export new
          is?
          rsapkcs1-key-exchange-deformatter?
          decrypt-key-exchange
          set-key
          parameters-get
          parameters-set!
          parameters-update!
          rng-get
          rng-set!
          rng-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter
      a))
  (define (rsapkcs1-key-exchange-deformatter? a)
    (clr-is
      System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter
      a))
  (define-method-port
    decrypt-key-exchange
    System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter
    DecryptKeyExchange
    (System.Byte[] System.Byte[]))
  (define-method-port
    set-key
    System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm))
  (define-field-port
    parameters-get
    parameters-set!
    parameters-update!
    (property:)
    System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter
    Parameters
    System.String)
  (define-field-port
    rng-get
    rng-set!
    rng-update!
    (property:)
    System.Security.Cryptography.RSAPKCS1KeyExchangeDeformatter
    RNG
    System.Security.Cryptography.RandomNumberGenerator))
