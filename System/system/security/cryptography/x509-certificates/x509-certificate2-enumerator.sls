(library (system
          security
          cryptography
          x509-certificates
          x509-certificate2-enumerator)
  (export is? x509-certificate2-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator
      a))
  (define (x509-certificate2-enumerator? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator
      a))
  (define-method-port
    reset
    System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509Certificate2Enumerator
    Current
    System.Security.Cryptography.X509Certificates.X509Certificate2))
