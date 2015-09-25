(library (system security permissions gac-identity-permission-attribute)
  (export new is? gac-identity-permission-attribute? create-permission)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.GacIdentityPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.GacIdentityPermissionAttribute
      a))
  (define (gac-identity-permission-attribute? a)
    (clr-is
      System.Security.Permissions.GacIdentityPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.GacIdentityPermissionAttribute
    CreatePermission
    (System.Security.IPermission)))
