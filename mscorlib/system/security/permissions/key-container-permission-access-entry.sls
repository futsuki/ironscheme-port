(library (system
          security
          permissions
          key-container-permission-access-entry)
  (export new
          is?
          key-container-permission-access-entry?
          get-hash-code
          equals?
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
             System.Security.Permissions.KeyContainerPermissionAccessEntry
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.KeyContainerPermissionAccessEntry
      a))
  (define (key-container-permission-access-entry? a)
    (clr-is
      System.Security.Permissions.KeyContainerPermissionAccessEntry
      a))
  (define-method-port
    get-hash-code
    System.Security.Permissions.KeyContainerPermissionAccessEntry
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Security.Permissions.KeyContainerPermissionAccessEntry
    Equals
    (System.Boolean System.Object))
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntry
    Flags
    System.Security.Permissions.KeyContainerPermissionFlags)
  (define-field-port
    key-container-name-get
    key-container-name-set!
    key-container-name-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntry
    KeyContainerName
    System.String)
  (define-field-port
    key-spec-get
    key-spec-set!
    key-spec-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntry
    KeySpec
    System.Int32)
  (define-field-port
    key-store-get
    key-store-set!
    key-store-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntry
    KeyStore
    System.String)
  (define-field-port
    provider-name-get
    provider-name-set!
    provider-name-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntry
    ProviderName
    System.String)
  (define-field-port
    provider-type-get
    provider-type-set!
    provider-type-update!
    (property:)
    System.Security.Permissions.KeyContainerPermissionAccessEntry
    ProviderType
    System.Int32))
