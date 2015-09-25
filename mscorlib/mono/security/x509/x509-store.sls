(library (mono security x509 x509-store)
  (export is? x509-store? remove import clear certificates crls name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.X509.X509Store a))
  (define (x509-store? a) (clr-is Mono.Security.X509.X509Store a))
  (define-method-port
    remove
    Mono.Security.X509.X509Store
    Remove
    (System.Void Mono.Security.X509.X509Crl)
    (System.Void Mono.Security.X509.X509Certificate))
  (define-method-port
    import
    Mono.Security.X509.X509Store
    Import
    (System.Void Mono.Security.X509.X509Crl)
    (System.Void Mono.Security.X509.X509Certificate))
  (define-method-port
    clear
    Mono.Security.X509.X509Store
    Clear
    (System.Void))
  (define-field-port
    certificates
    #f
    #f
    (property:)
    Mono.Security.X509.X509Store
    Certificates
    Mono.Security.X509.X509CertificateCollection)
  (define-field-port
    crls
    #f
    #f
    (property:)
    Mono.Security.X509.X509Store
    Crls
    System.Collections.ArrayList)
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Security.X509.X509Store
    Name
    System.String))
