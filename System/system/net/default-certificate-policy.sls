(library (system net default-certificate-policy)
  (export new is? default-certificate-policy? check-validation-result?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.DefaultCertificatePolicy a ...)))))
  (define (is? a) (clr-is System.Net.DefaultCertificatePolicy a))
  (define (default-certificate-policy? a)
    (clr-is System.Net.DefaultCertificatePolicy a))
  (define-method-port
    check-validation-result?
    System.Net.DefaultCertificatePolicy
    CheckValidationResult
    (System.Boolean
      System.Net.ServicePoint
      System.Security.Cryptography.X509Certificates.X509Certificate
      System.Net.WebRequest
      System.Int32)))
