(library (system security permissions site-identity-permission)
  (export new
          is?
          site-identity-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          copy
          intersect
          site-get
          site-set!
          site-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.SiteIdentityPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.SiteIdentityPermission a))
  (define (site-identity-permission? a)
    (clr-is System.Security.Permissions.SiteIdentityPermission a))
  (define-method-port
    union
    System.Security.Permissions.SiteIdentityPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.SiteIdentityPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.SiteIdentityPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.SiteIdentityPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Permissions.SiteIdentityPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.SiteIdentityPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    site-get
    site-set!
    site-update!
    (property:)
    System.Security.Permissions.SiteIdentityPermission
    Site
    System.String))
