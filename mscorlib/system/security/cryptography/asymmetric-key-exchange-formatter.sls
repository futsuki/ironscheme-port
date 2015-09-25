(library (system
          security
          cryptography
          asymmetric-key-exchange-formatter)
  (export is?
          asymmetric-key-exchange-formatter?
          set-key
          create-key-exchange
          parameters)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.AsymmetricKeyExchangeFormatter
      a))
  (define (asymmetric-key-exchange-formatter? a)
    (clr-is
      System.Security.Cryptography.AsymmetricKeyExchangeFormatter
      a))
  (define-method-port
    set-key
    System.Security.Cryptography.AsymmetricKeyExchangeFormatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm))
  (define-method-port
    create-key-exchange
    System.Security.Cryptography.AsymmetricKeyExchangeFormatter
    CreateKeyExchange
    (System.Byte[] System.Byte[] System.Type)
    (System.Byte[] System.Byte[]))
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.Security.Cryptography.AsymmetricKeyExchangeFormatter
    Parameters
    System.String))
