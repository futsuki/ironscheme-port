(library (system security permissions store-permission-attribute)
  (export new
          is?
          store-permission-attribute?
          create-permission
          flags-get
          flags-set!
          flags-update!
          add-to-store?-get
          add-to-store?-set!
          add-to-store?-update!
          create-store?-get
          create-store?-set!
          create-store?-update!
          delete-store?-get
          delete-store?-set!
          delete-store?-update!
          enumerate-certificates?-get
          enumerate-certificates?-set!
          enumerate-certificates?-update!
          enumerate-stores?-get
          enumerate-stores?-set!
          enumerate-stores?-update!
          open-store?-get
          open-store?-set!
          open-store?-update!
          remove-from-store?-get
          remove-from-store?-set!
          remove-from-store?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.StorePermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.StorePermissionAttribute a))
  (define (store-permission-attribute? a)
    (clr-is System.Security.Permissions.StorePermissionAttribute a))
  (define-method-port
    create-permission
    System.Security.Permissions.StorePermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    (property:)
    System.Security.Permissions.StorePermissionAttribute
    Flags
    System.Security.Permissions.StorePermissionFlags)
  (define-field-port
    add-to-store?-get
    add-to-store?-set!
    add-to-store?-update!
    (property:)
    System.Security.Permissions.StorePermissionAttribute
    AddToStore
    System.Boolean)
  (define-field-port
    create-store?-get
    create-store?-set!
    create-store?-update!
    (property:)
    System.Security.Permissions.StorePermissionAttribute
    CreateStore
    System.Boolean)
  (define-field-port
    delete-store?-get
    delete-store?-set!
    delete-store?-update!
    (property:)
    System.Security.Permissions.StorePermissionAttribute
    DeleteStore
    System.Boolean)
  (define-field-port
    enumerate-certificates?-get
    enumerate-certificates?-set!
    enumerate-certificates?-update!
    (property:)
    System.Security.Permissions.StorePermissionAttribute
    EnumerateCertificates
    System.Boolean)
  (define-field-port
    enumerate-stores?-get
    enumerate-stores?-set!
    enumerate-stores?-update!
    (property:)
    System.Security.Permissions.StorePermissionAttribute
    EnumerateStores
    System.Boolean)
  (define-field-port
    open-store?-get
    open-store?-set!
    open-store?-update!
    (property:)
    System.Security.Permissions.StorePermissionAttribute
    OpenStore
    System.Boolean)
  (define-field-port
    remove-from-store?-get
    remove-from-store?-set!
    remove-from-store?-update!
    (property:)
    System.Security.Permissions.StorePermissionAttribute
    RemoveFromStore
    System.Boolean))
