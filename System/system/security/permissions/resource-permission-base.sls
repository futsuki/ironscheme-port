(library (system security permissions resource-permission-base)
  (export is?
          resource-permission-base?
          union
          from-xml
          is-subset-of?
          to-xml
          is-unrestricted?
          copy
          intersect
          any
          local)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Permissions.ResourcePermissionBase a))
  (define (resource-permission-base? a)
    (clr-is System.Security.Permissions.ResourcePermissionBase a))
  (define-method-port
    union
    System.Security.Permissions.ResourcePermissionBase
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.ResourcePermissionBase
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.ResourcePermissionBase
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.ResourcePermissionBase
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.ResourcePermissionBase
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.ResourcePermissionBase
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.ResourcePermissionBase
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    any
    #f
    #f
    (static:)
    System.Security.Permissions.ResourcePermissionBase
    Any
    System.String)
  (define-field-port
    local
    #f
    #f
    (static:)
    System.Security.Permissions.ResourcePermissionBase
    Local
    System.String))
