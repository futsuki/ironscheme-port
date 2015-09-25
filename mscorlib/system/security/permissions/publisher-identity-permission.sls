(library (system security permissions publisher-identity-permission)
  (export new
          is?
          publisher-identity-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          copy
          intersect
          certificate-get
          certificate-set!
          certificate-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.PublisherIdentityPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.PublisherIdentityPermission a))
  (define (publisher-identity-permission? a)
    (clr-is System.Security.Permissions.PublisherIdentityPermission a))
  (define-method-port
    union
    System.Security.Permissions.PublisherIdentityPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.PublisherIdentityPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.PublisherIdentityPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.PublisherIdentityPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Permissions.PublisherIdentityPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.PublisherIdentityPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    certificate-get
    certificate-set!
    certificate-update!
    (property:)
    System.Security.Permissions.PublisherIdentityPermission
    Certificate
    System.Security.Cryptography.X509Certificates.X509Certificate))
