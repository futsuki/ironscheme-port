(library (system
          security
          cryptography
          x509-certificates
          x509-chain-element)
  (export is?
          x509-chain-element?
          certificate
          chain-element-status
          information)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509ChainElement
      a))
  (define (x509-chain-element? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509ChainElement
      a))
  (define-field-port
    certificate
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ChainElement
    Certificate
    System.Security.Cryptography.X509Certificates.X509Certificate2)
  (define-field-port
    chain-element-status
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ChainElement
    ChainElementStatus
    System.Security.Cryptography.X509Certificates.X509ChainStatus[])
  (define-field-port
    information
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ChainElement
    Information
    System.String))
