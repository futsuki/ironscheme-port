(library (system security permissions environment-permission)
  (export new
          is?
          environment-permission?
          union
          set-path-list
          from-xml
          is-subset-of?
          add-path-list
          get-path-list
          to-xml
          is-unrestricted?
          copy
          intersect)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.EnvironmentPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.EnvironmentPermission a))
  (define (environment-permission? a)
    (clr-is System.Security.Permissions.EnvironmentPermission a))
  (define-method-port
    union
    System.Security.Permissions.EnvironmentPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    set-path-list
    System.Security.Permissions.EnvironmentPermission
    SetPathList
    (System.Void
      System.Security.Permissions.EnvironmentPermissionAccess
      System.String))
  (define-method-port
    from-xml
    System.Security.Permissions.EnvironmentPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.EnvironmentPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    add-path-list
    System.Security.Permissions.EnvironmentPermission
    AddPathList
    (System.Void
      System.Security.Permissions.EnvironmentPermissionAccess
      System.String))
  (define-method-port
    get-path-list
    System.Security.Permissions.EnvironmentPermission
    GetPathList
    (System.String
      System.Security.Permissions.EnvironmentPermissionAccess))
  (define-method-port
    to-xml
    System.Security.Permissions.EnvironmentPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.EnvironmentPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.EnvironmentPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.EnvironmentPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission)))
