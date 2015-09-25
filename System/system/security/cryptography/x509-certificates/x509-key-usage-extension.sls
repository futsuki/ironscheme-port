(library (system
          security
          cryptography
          x509-certificates
          x509-key-usage-extension)
  (export new is? x509-key-usage-extension? copy-from key-usages)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X509KeyUsageExtension
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509KeyUsageExtension
      a))
  (define (x509-key-usage-extension? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509KeyUsageExtension
      a))
  (define-method-port
    copy-from
    System.Security.Cryptography.X509Certificates.X509KeyUsageExtension
    CopyFrom
    (System.Void System.Security.Cryptography.AsnEncodedData))
  (define-field-port
    key-usages
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509KeyUsageExtension
    KeyUsages
    System.Security.Cryptography.X509Certificates.X509KeyUsageFlags))
