(library (mono security x509 x509-chain)
  (export new
          is?
          x509-chain?
          load-certificate
          find-by-issuer-name
          reset
          load-certificates
          build?
          chain
          root
          status
          trust-anchors-get
          trust-anchors-set!
          trust-anchors-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.X509.X509Chain a ...)))))
  (define (is? a) (clr-is Mono.Security.X509.X509Chain a))
  (define (x509-chain? a) (clr-is Mono.Security.X509.X509Chain a))
  (define-method-port
    load-certificate
    Mono.Security.X509.X509Chain
    LoadCertificate
    (System.Void Mono.Security.X509.X509Certificate))
  (define-method-port
    find-by-issuer-name
    Mono.Security.X509.X509Chain
    FindByIssuerName
    (Mono.Security.X509.X509Certificate System.String))
  (define-method-port
    reset
    Mono.Security.X509.X509Chain
    Reset
    (System.Void))
  (define-method-port
    load-certificates
    Mono.Security.X509.X509Chain
    LoadCertificates
    (System.Void Mono.Security.X509.X509CertificateCollection))
  (define-method-port
    build?
    Mono.Security.X509.X509Chain
    Build
    (System.Boolean Mono.Security.X509.X509Certificate))
  (define-field-port
    chain
    #f
    #f
    (property:)
    Mono.Security.X509.X509Chain
    Chain
    Mono.Security.X509.X509CertificateCollection)
  (define-field-port
    root
    #f
    #f
    (property:)
    Mono.Security.X509.X509Chain
    Root
    Mono.Security.X509.X509Certificate)
  (define-field-port
    status
    #f
    #f
    (property:)
    Mono.Security.X509.X509Chain
    Status
    Mono.Security.X509.X509ChainStatusFlags)
  (define-field-port
    trust-anchors-get
    trust-anchors-set!
    trust-anchors-update!
    (property:)
    Mono.Security.X509.X509Chain
    TrustAnchors
    Mono.Security.X509.X509CertificateCollection))
