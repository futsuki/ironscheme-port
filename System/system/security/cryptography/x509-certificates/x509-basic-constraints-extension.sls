(library (system
          security
          cryptography
          x509-certificates
          x509-basic-constraints-extension)
  (export new
          is?
          x509-basic-constraints-extension?
          copy-from
          certificate-authority?
          has-path-length-constraint?
          path-length-constraint)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension
      a))
  (define (x509-basic-constraints-extension? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension
      a))
  (define-method-port
    copy-from
    System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension
    CopyFrom
    (System.Void System.Security.Cryptography.AsnEncodedData))
  (define-field-port
    certificate-authority?
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension
    CertificateAuthority
    System.Boolean)
  (define-field-port
    has-path-length-constraint?
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension
    HasPathLengthConstraint
    System.Boolean)
  (define-field-port
    path-length-constraint
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509BasicConstraintsExtension
    PathLengthConstraint
    System.Int32))
