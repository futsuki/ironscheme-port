(library (system
          security
          permissions
          site-identity-permission-attribute)
  (export new
          is?
          site-identity-permission-attribute?
          create-permission
          site-get
          site-set!
          site-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.SiteIdentityPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.SiteIdentityPermissionAttribute
      a))
  (define (site-identity-permission-attribute? a)
    (clr-is
      System.Security.Permissions.SiteIdentityPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.SiteIdentityPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    site-get
    site-set!
    site-update!
    (property:)
    System.Security.Permissions.SiteIdentityPermissionAttribute
    Site
    System.String))
