(library (mono security x509 pkcs9)
  (export new is? pkcs9? friendly-name local-key-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.X509.PKCS9 a ...)))))
  (define (is? a) (clr-is Mono.Security.X509.PKCS9 a))
  (define (pkcs9? a) (clr-is Mono.Security.X509.PKCS9 a))
  (define-field-port
    friendly-name
    #f
    #f
    (static:)
    Mono.Security.X509.PKCS9
    friendlyName
    System.String)
  (define-field-port
    local-key-id
    #f
    #f
    (static:)
    Mono.Security.X509.PKCS9
    localKeyId
    System.String))
