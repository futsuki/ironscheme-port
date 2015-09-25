(library (mono security x509 safe-bag)
  (export new is? safe-bag? bag-oid asn1)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.X509.SafeBag a ...)))))
  (define (is? a) (clr-is Mono.Security.X509.SafeBag a))
  (define (safe-bag? a) (clr-is Mono.Security.X509.SafeBag a))
  (define-field-port
    bag-oid
    #f
    #f
    (property:)
    Mono.Security.X509.SafeBag
    BagOID
    System.String)
  (define-field-port
    asn1
    #f
    #f
    (property:)
    Mono.Security.X509.SafeBag
    ASN1
    Mono.Security.ASN1))
