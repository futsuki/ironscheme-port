(library (system
          security
          cryptography
          x509-certificates
          x500-distinguished-name)
  (export new is? x500-distinguished-name? decode format name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X500DistinguishedName
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X500DistinguishedName
      a))
  (define (x500-distinguished-name? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X500DistinguishedName
      a))
  (define-method-port
    decode
    System.Security.Cryptography.X509Certificates.X500DistinguishedName
    Decode
    (System.String
      System.Security.Cryptography.X509Certificates.X500DistinguishedNameFlags))
  (define-method-port
    format
    System.Security.Cryptography.X509Certificates.X500DistinguishedName
    Format
    (System.String System.Boolean))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X500DistinguishedName
    Name
    System.String))
