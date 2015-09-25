(library (mono security x509 x509-extension)
  (export new
          is?
          x509-extension?
          get-hash-code
          to-string
          get-bytes
          equals?
          asn1
          oid
          critical?-get
          critical?-set!
          critical?-update!
          name
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Security.X509.X509Extension a ...)))))
  (define (is? a) (clr-is Mono.Security.X509.X509Extension a))
  (define (x509-extension? a)
    (clr-is Mono.Security.X509.X509Extension a))
  (define-method-port
    get-hash-code
    Mono.Security.X509.X509Extension
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    Mono.Security.X509.X509Extension
    ToString
    (System.String))
  (define-method-port
    get-bytes
    Mono.Security.X509.X509Extension
    GetBytes
    (System.Byte[]))
  (define-method-port
    equals?
    Mono.Security.X509.X509Extension
    Equals
    (System.Boolean System.Object))
  (define-field-port
    asn1
    #f
    #f
    (property:)
    Mono.Security.X509.X509Extension
    ASN1
    Mono.Security.ASN1)
  (define-field-port
    oid
    #f
    #f
    (property:)
    Mono.Security.X509.X509Extension
    Oid
    System.String)
  (define-field-port
    critical?-get
    critical?-set!
    critical?-update!
    (property:)
    Mono.Security.X509.X509Extension
    Critical
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Security.X509.X509Extension
    Name
    System.String)
  (define-field-port
    value
    #f
    #f
    (property:)
    Mono.Security.X509.X509Extension
    Value
    Mono.Security.ASN1))
