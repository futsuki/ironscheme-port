(library (mono security x509 x509-store-manager)
  (export is?
          x509-store-manager?
          current-user
          local-machine
          intermediate-cacertificates
          intermediate-cacrls
          trusted-root-certificates
          trusted-root-cacrls
          untrusted-certificates)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.X509.X509StoreManager a))
  (define (x509-store-manager? a)
    (clr-is Mono.Security.X509.X509StoreManager a))
  (define-field-port
    current-user
    #f
    #f
    (static: property:)
    Mono.Security.X509.X509StoreManager
    CurrentUser
    Mono.Security.X509.X509Stores)
  (define-field-port
    local-machine
    #f
    #f
    (static: property:)
    Mono.Security.X509.X509StoreManager
    LocalMachine
    Mono.Security.X509.X509Stores)
  (define-field-port
    intermediate-cacertificates
    #f
    #f
    (static: property:)
    Mono.Security.X509.X509StoreManager
    IntermediateCACertificates
    Mono.Security.X509.X509CertificateCollection)
  (define-field-port
    intermediate-cacrls
    #f
    #f
    (static: property:)
    Mono.Security.X509.X509StoreManager
    IntermediateCACrls
    System.Collections.ArrayList)
  (define-field-port
    trusted-root-certificates
    #f
    #f
    (static: property:)
    Mono.Security.X509.X509StoreManager
    TrustedRootCertificates
    Mono.Security.X509.X509CertificateCollection)
  (define-field-port
    trusted-root-cacrls
    #f
    #f
    (static: property:)
    Mono.Security.X509.X509StoreManager
    TrustedRootCACrls
    System.Collections.ArrayList)
  (define-field-port
    untrusted-certificates
    #f
    #f
    (static: property:)
    Mono.Security.X509.X509StoreManager
    UntrustedCertificates
    Mono.Security.X509.X509CertificateCollection))
