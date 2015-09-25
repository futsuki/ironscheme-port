(library (system security permissions url-identity-permission-attribute)
  (export new
          is?
          url-identity-permission-attribute?
          create-permission
          url-get
          url-set!
          url-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.UrlIdentityPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.UrlIdentityPermissionAttribute
      a))
  (define (url-identity-permission-attribute? a)
    (clr-is
      System.Security.Permissions.UrlIdentityPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.UrlIdentityPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    url-get
    url-set!
    url-update!
    (property:)
    System.Security.Permissions.UrlIdentityPermissionAttribute
    Url
    System.String))
