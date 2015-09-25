(library (mono security x509 osx509-certificates)
  (export new
          is?
          osx509-certificates?
          trust-evaluate-ssl
          security-library
          core-foundation-library)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Security.X509.OSX509Certificates a ...)))))
  (define (is? a) (clr-is Mono.Security.X509.OSX509Certificates a))
  (define (osx509-certificates? a)
    (clr-is Mono.Security.X509.OSX509Certificates a))
  (define-method-port
    trust-evaluate-ssl
    Mono.Security.X509.OSX509Certificates
    TrustEvaluateSsl
    (static:
      Mono.Security.X509.OSX509Certificates+SecTrustResult
      Mono.Security.X509.X509CertificateCollection))
  (define-field-port
    security-library
    #f
    #f
    (static:)
    Mono.Security.X509.OSX509Certificates
    SecurityLibrary
    System.String)
  (define-field-port
    core-foundation-library
    #f
    #f
    (static:)
    Mono.Security.X509.OSX509Certificates
    CoreFoundationLibrary
    System.String))
