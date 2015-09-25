(library (system
          security
          cryptography
          x509-certificates
          x509-chain-element-enumerator)
  (export is? x509-chain-element-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator
      a))
  (define (x509-chain-element-enumerator? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator
      a))
  (define-method-port
    reset
    System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509ChainElementEnumerator
    Current
    System.Security.Cryptography.X509Certificates.X509ChainElement))
