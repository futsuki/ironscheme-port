(library (system security permissions registry-permission)
  (export new
          is?
          registry-permission?
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
             System.Security.Permissions.RegistryPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.RegistryPermission a))
  (define (registry-permission? a)
    (clr-is System.Security.Permissions.RegistryPermission a))
  (define-method-port
    union
    System.Security.Permissions.RegistryPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    set-path-list
    System.Security.Permissions.RegistryPermission
    SetPathList
    (System.Void
      System.Security.Permissions.RegistryPermissionAccess
      System.String))
  (define-method-port
    from-xml
    System.Security.Permissions.RegistryPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.RegistryPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    add-path-list
    System.Security.Permissions.RegistryPermission
    AddPathList
    (System.Void
      System.Security.Permissions.RegistryPermissionAccess
      System.Security.AccessControl.AccessControlActions
      System.String)
    (System.Void
      System.Security.Permissions.RegistryPermissionAccess
      System.String))
  (define-method-port
    get-path-list
    System.Security.Permissions.RegistryPermission
    GetPathList
    (System.String
      System.Security.Permissions.RegistryPermissionAccess))
  (define-method-port
    to-xml
    System.Security.Permissions.RegistryPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.RegistryPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.RegistryPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.RegistryPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission)))
