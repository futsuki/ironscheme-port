(library (system security permissions environment-permission-attribute)
  (export new
          is?
          environment-permission-attribute?
          create-permission
          all-get
          all-set!
          all-update!
          read-get
          read-set!
          read-update!
          write-get
          write-set!
          write-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.EnvironmentPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.EnvironmentPermissionAttribute
      a))
  (define (environment-permission-attribute? a)
    (clr-is
      System.Security.Permissions.EnvironmentPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.EnvironmentPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    all-get
    all-set!
    all-update!
    (property:)
    System.Security.Permissions.EnvironmentPermissionAttribute
    All
    System.String)
  (define-field-port
    read-get
    read-set!
    read-update!
    (property:)
    System.Security.Permissions.EnvironmentPermissionAttribute
    Read
    System.String)
  (define-field-port
    write-get
    write-set!
    write-update!
    (property:)
    System.Security.Permissions.EnvironmentPermissionAttribute
    Write
    System.String))
