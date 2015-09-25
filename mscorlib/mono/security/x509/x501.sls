(library (mono security x509 x501)
  (export is? x501? from-string to-string)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.X509.X501 a))
  (define (x501? a) (clr-is Mono.Security.X509.X501 a))
  (define-method-port
    from-string
    Mono.Security.X509.X501
    FromString
    (static: Mono.Security.ASN1 System.String))
  (define-method-port
    to-string
    Mono.Security.X509.X501
    ToString
    (static:
      System.String
      Mono.Security.ASN1
      System.Boolean
      System.String
      System.Boolean)
    (static: System.String Mono.Security.ASN1)))
