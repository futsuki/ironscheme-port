(library (system
          security
          permissions
          zone-identity-permission-attribute)
  (export new
          is?
          zone-identity-permission-attribute?
          create-permission
          zone-get
          zone-set!
          zone-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.ZoneIdentityPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.ZoneIdentityPermissionAttribute
      a))
  (define (zone-identity-permission-attribute? a)
    (clr-is
      System.Security.Permissions.ZoneIdentityPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.ZoneIdentityPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    zone-get
    zone-set!
    zone-update!
    (property:)
    System.Security.Permissions.ZoneIdentityPermissionAttribute
    Zone
    System.Security.SecurityZone))
