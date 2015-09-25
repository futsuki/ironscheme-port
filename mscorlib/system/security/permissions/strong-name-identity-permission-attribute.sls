(library (system
          security
          permissions
          strong-name-identity-permission-attribute)
  (export new
          is?
          strong-name-identity-permission-attribute?
          create-permission
          name-get
          name-set!
          name-update!
          public-key-get
          public-key-set!
          public-key-update!
          version-get
          version-set!
          version-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.StrongNameIdentityPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.StrongNameIdentityPermissionAttribute
      a))
  (define (strong-name-identity-permission-attribute? a)
    (clr-is
      System.Security.Permissions.StrongNameIdentityPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.StrongNameIdentityPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Security.Permissions.StrongNameIdentityPermissionAttribute
    Name
    System.String)
  (define-field-port
    public-key-get
    public-key-set!
    public-key-update!
    (property:)
    System.Security.Permissions.StrongNameIdentityPermissionAttribute
    PublicKey
    System.String)
  (define-field-port
    version-get
    version-set!
    version-update!
    (property:)
    System.Security.Permissions.StrongNameIdentityPermissionAttribute
    Version
    System.String))
