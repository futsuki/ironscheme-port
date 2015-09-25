(library (system security permissions registry-permission-attribute)
  (export new
          is?
          registry-permission-attribute?
          create-permission
          all-get
          all-set!
          all-update!
          create-get
          create-set!
          create-update!
          read-get
          read-set!
          read-update!
          write-get
          write-set!
          write-update!
          change-access-control-get
          change-access-control-set!
          change-access-control-update!
          view-access-control-get
          view-access-control-set!
          view-access-control-update!
          view-and-modify-get
          view-and-modify-set!
          view-and-modify-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.RegistryPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.RegistryPermissionAttribute a))
  (define (registry-permission-attribute? a)
    (clr-is System.Security.Permissions.RegistryPermissionAttribute a))
  (define-method-port
    create-permission
    System.Security.Permissions.RegistryPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    all-get
    all-set!
    all-update!
    (property:)
    System.Security.Permissions.RegistryPermissionAttribute
    All
    System.String)
  (define-field-port
    create-get
    create-set!
    create-update!
    (property:)
    System.Security.Permissions.RegistryPermissionAttribute
    Create
    System.String)
  (define-field-port
    read-get
    read-set!
    read-update!
    (property:)
    System.Security.Permissions.RegistryPermissionAttribute
    Read
    System.String)
  (define-field-port
    write-get
    write-set!
    write-update!
    (property:)
    System.Security.Permissions.RegistryPermissionAttribute
    Write
    System.String)
  (define-field-port
    change-access-control-get
    change-access-control-set!
    change-access-control-update!
    (property:)
    System.Security.Permissions.RegistryPermissionAttribute
    ChangeAccessControl
    System.String)
  (define-field-port
    view-access-control-get
    view-access-control-set!
    view-access-control-update!
    (property:)
    System.Security.Permissions.RegistryPermissionAttribute
    ViewAccessControl
    System.String)
  (define-field-port
    view-and-modify-get
    view-and-modify-set!
    view-and-modify-update!
    (property:)
    System.Security.Permissions.RegistryPermissionAttribute
    ViewAndModify
    System.String))
