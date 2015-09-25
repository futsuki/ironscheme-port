(library (system
          security
          cryptography
          asymmetric-key-exchange-deformatter)
  (export is?
          asymmetric-key-exchange-deformatter?
          decrypt-key-exchange
          set-key
          parameters-get
          parameters-set!
          parameters-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
      a))
  (define (asymmetric-key-exchange-deformatter? a)
    (clr-is
      System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
      a))
  (define-method-port
    decrypt-key-exchange
    System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
    DecryptKeyExchange
    (System.Byte[] System.Byte[]))
  (define-method-port
    set-key
    System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm))
  (define-field-port
    parameters-get
    parameters-set!
    parameters-update!
    (property:)
    System.Security.Cryptography.AsymmetricKeyExchangeDeformatter
    Parameters
    System.String))
