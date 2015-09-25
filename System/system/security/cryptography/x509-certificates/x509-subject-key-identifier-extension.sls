(library (system
          security
          cryptography
          x509-certificates
          x509-subject-key-identifier-extension)
  (export new
          is?
          x509-subject-key-identifier-extension?
          copy-from
          subject-key-identifier)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension
      a))
  (define (x509-subject-key-identifier-extension? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension
      a))
  (define-method-port
    copy-from
    System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension
    CopyFrom
    (System.Void System.Security.Cryptography.AsnEncodedData))
  (define-field-port
    subject-key-identifier
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509SubjectKeyIdentifierExtension
    SubjectKeyIdentifier
    System.String))
