(library (mono security pkcs7)
  (export is?
          pkcs7?
          attribute
          issuer-and-serial-number
          algorithm-identifier)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.PKCS7 a))
  (define (pkcs7? a) (clr-is Mono.Security.PKCS7 a))
  (define-method-port
    attribute
    Mono.Security.PKCS7
    Attribute
    (static: Mono.Security.ASN1 System.String Mono.Security.ASN1))
  (define-method-port
    issuer-and-serial-number
    Mono.Security.PKCS7
    IssuerAndSerialNumber
    (static: Mono.Security.ASN1 Mono.Security.X509.X509Certificate))
  (define-method-port
    algorithm-identifier
    Mono.Security.PKCS7
    AlgorithmIdentifier
    (static: Mono.Security.ASN1 System.String Mono.Security.ASN1)
    (static: Mono.Security.ASN1 System.String)))
