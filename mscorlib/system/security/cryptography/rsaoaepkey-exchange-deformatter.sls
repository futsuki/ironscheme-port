(library (system security cryptography rsaoaepkey-exchange-deformatter)
  (export new
          is?
          rsaoaepkey-exchange-deformatter?
          decrypt-key-exchange
          set-key
          parameters-get
          parameters-set!
          parameters-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter
      a))
  (define (rsaoaepkey-exchange-deformatter? a)
    (clr-is
      System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter
      a))
  (define-method-port
    decrypt-key-exchange
    System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter
    DecryptKeyExchange
    (System.Byte[] System.Byte[]))
  (define-method-port
    set-key
    System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter
    SetKey
    (System.Void System.Security.Cryptography.AsymmetricAlgorithm))
  (define-field-port
    parameters-get
    parameters-set!
    parameters-update!
    (property:)
    System.Security.Cryptography.RSAOAEPKeyExchangeDeformatter
    Parameters
    System.String))
