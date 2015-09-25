(library (system
          security
          permissions
          publisher-identity-permission-attribute)
  (export new
          is?
          publisher-identity-permission-attribute?
          create-permission
          cert-file-get
          cert-file-set!
          cert-file-update!
          signed-file-get
          signed-file-set!
          signed-file-update!
          x509-certificate-get
          x509-certificate-set!
          x509-certificate-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.PublisherIdentityPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.PublisherIdentityPermissionAttribute
      a))
  (define (publisher-identity-permission-attribute? a)
    (clr-is
      System.Security.Permissions.PublisherIdentityPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.PublisherIdentityPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    cert-file-get
    cert-file-set!
    cert-file-update!
    (property:)
    System.Security.Permissions.PublisherIdentityPermissionAttribute
    CertFile
    System.String)
  (define-field-port
    signed-file-get
    signed-file-set!
    signed-file-update!
    (property:)
    System.Security.Permissions.PublisherIdentityPermissionAttribute
    SignedFile
    System.String)
  (define-field-port
    x509-certificate-get
    x509-certificate-set!
    x509-certificate-update!
    (property:)
    System.Security.Permissions.PublisherIdentityPermissionAttribute
    X509Certificate
    System.String))
