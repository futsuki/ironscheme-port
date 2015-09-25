(library (system security cryptography x509-certificates public-key)
  (export new
          is?
          public-key?
          encoded-key-value
          encoded-parameters
          key
          oid)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.PublicKey
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.X509Certificates.PublicKey a))
  (define (public-key? a)
    (clr-is System.Security.Cryptography.X509Certificates.PublicKey a))
  (define-field-port
    encoded-key-value
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.PublicKey
    EncodedKeyValue
    System.Security.Cryptography.AsnEncodedData)
  (define-field-port
    encoded-parameters
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.PublicKey
    EncodedParameters
    System.Security.Cryptography.AsnEncodedData)
  (define-field-port
    key
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.PublicKey
    Key
    System.Security.Cryptography.AsymmetricAlgorithm)
  (define-field-port
    oid
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.PublicKey
    Oid
    System.Security.Cryptography.Oid))
