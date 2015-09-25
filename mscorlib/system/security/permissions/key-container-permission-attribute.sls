(library (system
          security
          permissions
          key-container-permission-attribute)
  (export new
          is?
          key-container-permission-attribute?
          create-permission
          flags-get
          flags-set!
          flags-update!
          key-container-name-get
          key-container-name-set!
          key-container-name-update!
          key-spec-get
          key-spec-set!
          key-spec-update!
          key-store-get
          key-store-set!
          key-store-update!
          provider-name-get
          provider-name-set!
          provider-name-update!
          provider-type-get
          provider-type-set!
          provider-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.KeyContainerPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.KeyContainerPermissionAttribute
      a))
  (define (key-container-permission-attribute? a)
    (clr-is
      System.Security.Permissions.KeyContainerPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.KeyContainerPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAttribute
    Flags
    System.Security.Permissions.KeyContainerPermissionFlags)
  (define-field-port
    key-container-name-get
    key-container-name-set!
    key-container-name-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAttribute
    KeyContainerName
    System.String)
  (define-field-port
    key-spec-get
    key-spec-set!
    key-spec-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAttribute
    KeySpec
    System.Int32)
  (define-field-port
    key-store-get
    key-store-set!
    key-store-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAttribute
    KeyStore
    System.String)
  (define-field-port
    provider-name-get
    provider-name-set!
    provider-name-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAttribute
    ProviderName
    System.String)
  (define-field-port
    provider-type-get
    provider-type-set!
    provider-type-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAttribute
    ProviderType
    System.Int32))
