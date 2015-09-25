(library (system security cryptography rsapkcs1-key-exchange-formatter)
  (export new
          is?
          rsapkcs1-key-exchange-formatter?
          set-key
          create-key-exchange
          rng-get
          rng-set!
          rng-update!
          parameters)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter
      a))
  (define (rsapkcs1-key-exchange-formatter? a)
    (clr-is
      System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter
      a))
  (define-method-port
    set-key
    System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm))
  (define-method-port
    create-key-exchange
    System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter
    CreateKeyExchange
    (System.Byte[] System.Byte[] System.Type)
    (System.Byte[] System.Byte[]))
  (define-field-port
    rng-get
    rng-set!
    rng-update!
    (property:)
    System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter
    Rng
    System.Security.Cryptography.RandomNumberGenerator)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.Security.Cryptography.RSAPKCS1KeyExchangeFormatter
    Parameters
    System.String))
