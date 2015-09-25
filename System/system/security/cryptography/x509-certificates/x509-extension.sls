(library (system security cryptography x509-certificates x509-extension)
  (export new
          is?
          x509-extension?
          copy-from
          critical?-get
          critical?-set!
          critical?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X509Extension
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509Extension
      a))
  (define (x509-extension? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509Extension
      a))
  (define-method-port
    copy-from
    System.Security.Cryptography.X509Certificates.X509Extension
    CopyFrom
    (System.Void System.Security.Cryptography.AsnEncodedData))
  (define-field-port
    critical?-get
    critical?-set!
    critical?-update!
    (property:)
    System.Security.Cryptography.X509Certificates.X509Extension
    Critical
    System.Boolean))
