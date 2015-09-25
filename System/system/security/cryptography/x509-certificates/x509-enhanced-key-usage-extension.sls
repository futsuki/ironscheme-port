(library (system
          security
          cryptography
          x509-certificates
          x509-enhanced-key-usage-extension)
  (export new
          is?
          x509-enhanced-key-usage-extension?
          copy-from
          enhanced-key-usages)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension
      a))
  (define (x509-enhanced-key-usage-extension? a)
    (clr-is
      System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension
      a))
  (define-method-port
    copy-from
    System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension
    CopyFrom
    (System.Void System.Security.Cryptography.AsnEncodedData))
  (define-field-port
    enhanced-key-usages
    #f
    #f
    (property:)
    System.Security.Cryptography.X509Certificates.X509EnhancedKeyUsageExtension
    EnhancedKeyUsages
    System.Security.Cryptography.OidCollection))
