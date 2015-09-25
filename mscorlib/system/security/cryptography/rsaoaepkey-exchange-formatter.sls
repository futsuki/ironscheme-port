(library (system security cryptography rsaoaepkey-exchange-formatter)
  (export new
          is?
          rsaoaepkey-exchange-formatter?
          set-key
          create-key-exchange
          parameter-get
          parameter-set!
          parameter-update!
          parameters
          rng-get
          rng-set!
          rng-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RSAOAEPKeyExchangeFormatter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.RSAOAEPKeyExchangeFormatter a))
  (define (rsaoaepkey-exchange-formatter? a)
    (clr-is System.Security.Cryptography.RSAOAEPKeyExchangeFormatter a))
  (define-method-port
    set-key
    System.Security.Cryptography.RSAOAEPKeyExchangeFormatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm))
  (define-method-port
    create-key-exchange
    System.Security.Cryptography.RSAOAEPKeyExchangeFormatter
    CreateKeyExchange
    (System.Byte[] System.Byte[] System.Type)
    (System.Byte[] System.Byte[]))
  (define-field-port
    parameter-get
    parameter-set!
    parameter-update!
    (property:)
    System.Security.Cryptography.RSAOAEPKeyExchangeFormatter
    Parameter
    System.Byte[])
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.Security.Cryptography.RSAOAEPKeyExchangeFormatter
    Parameters
    System.String)
  (define-field-port
    rng-get
    rng-set!
    rng-update!
    (property:)
    System.Security.Cryptography.RSAOAEPKeyExchangeFormatter
    Rng
    System.Security.Cryptography.RandomNumberGenerator))
