(library (system security permissions principal-permission-attribute)
  (export new
          is?
          principal-permission-attribute?
          create-permission
          authenticated?-get
          authenticated?-set!
          authenticated?-update!
          name-get
          name-set!
          name-update!
          role-get
          role-set!
          role-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.PrincipalPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.PrincipalPermissionAttribute a))
  (define (principal-permission-attribute? a)
    (clr-is System.Security.Permissions.PrincipalPermissionAttribute a))
  (define-method-port
    create-permission
    System.Security.Permissions.PrincipalPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    authenticated?-get
    authenticated?-set!
    authenticated?-update!
    (property:)
    System.Security.Permissions.PrincipalPermissionAttribute
    Authenticated
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Security.Permissions.PrincipalPermissionAttribute
    Name
    System.String)
  (define-field-port
    role-get
    role-set!
    role-update!
    (property:)
    System.Security.Permissions.PrincipalPermissionAttribute
    Role
    System.String))
