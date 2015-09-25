(library (mono security authenticode authenticode-deformatter)
  (export new
          is?
          authenticode-deformatter?
          is-trusted?
          file-name-get
          file-name-set!
          file-name-update!
          hash
          reason
          signature
          timestamp
          certificates
          signing-certificate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.Authenticode.AuthenticodeDeformatter
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Security.Authenticode.AuthenticodeDeformatter a))
  (define (authenticode-deformatter? a)
    (clr-is Mono.Security.Authenticode.AuthenticodeDeformatter a))
  (define-method-port
    is-trusted?
    Mono.Security.Authenticode.AuthenticodeDeformatter
    IsTrusted
    (System.Boolean))
  (define-field-port
    file-name-get
    file-name-set!
    file-name-update!
    (property:)
    Mono.Security.Authenticode.AuthenticodeDeformatter
    FileName
    System.String)
  (define-field-port
    hash
    #f
    #f
    (property:)
    Mono.Security.Authenticode.AuthenticodeDeformatter
    Hash
    System.Byte[])
  (define-field-port
    reason
    #f
    #f
    (property:)
    Mono.Security.Authenticode.AuthenticodeDeformatter
    Reason
    System.Int32)
  (define-field-port
    signature
    #f
    #f
    (property:)
    Mono.Security.Authenticode.AuthenticodeDeformatter
    Signature
    System.Byte[])
  (define-field-port
    timestamp
    #f
    #f
    (property:)
    Mono.Security.Authenticode.AuthenticodeDeformatter
    Timestamp
    System.DateTime)
  (define-field-port
    certificates
    #f
    #f
    (property:)
    Mono.Security.Authenticode.AuthenticodeDeformatter
    Certificates
    Mono.Security.X509.X509CertificateCollection)
  (define-field-port
    signing-certificate
    #f
    #f
    (property:)
    Mono.Security.Authenticode.AuthenticodeDeformatter
    SigningCertificate
    Mono.Security.X509.X509Certificate))
