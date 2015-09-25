(library (mono security x509 extensions basic-constraints-extension)
  (export new
          is?
          basic-constraints-extension?
          to-string
          no-path-length-constraint
          certificate-authority?-get
          certificate-authority?-set!
          certificate-authority?-update!
          name
          path-len-constraint-get
          path-len-constraint-set!
          path-len-constraint-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.X509.Extensions.BasicConstraintsExtension
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Security.X509.Extensions.BasicConstraintsExtension a))
  (define (basic-constraints-extension? a)
    (clr-is Mono.Security.X509.Extensions.BasicConstraintsExtension a))
  (define-method-port
    to-string
    Mono.Security.X509.Extensions.BasicConstraintsExtension
    ToString
    (System.String))
  (define-field-port
    no-path-length-constraint
    #f
    #f
    (static:)
    Mono.Security.X509.Extensions.BasicConstraintsExtension
    NoPathLengthConstraint
    System.Int32)
  (define-field-port
    certificate-authority?-get
    certificate-authority?-set!
    certificate-authority?-update!
    (property:)
    Mono.Security.X509.Extensions.BasicConstraintsExtension
    CertificateAuthority
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Security.X509.Extensions.BasicConstraintsExtension
    Name
    System.String)
  (define-field-port
    path-len-constraint-get
    path-len-constraint-set!
    path-len-constraint-update!
    (property:)
    Mono.Security.X509.Extensions.BasicConstraintsExtension
    PathLenConstraint
    System.Int32))
