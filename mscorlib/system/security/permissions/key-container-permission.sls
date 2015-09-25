(library (system security permissions key-container-permission)
  (export new
          is?
          key-container-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          is-unrestricted?
          copy
          intersect
          access-entries
          flags)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.KeyContainerPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.KeyContainerPermission a))
  (define (key-container-permission? a)
    (clr-is System.Security.Permissions.KeyContainerPermission a))
  (define-method-port
    union
    System.Security.Permissions.KeyContainerPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.KeyContainerPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.KeyContainerPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.KeyContainerPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.KeyContainerPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.KeyContainerPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.KeyContainerPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    access-entries
    #f
    #f
    (property:)
    System.Security.Permissions.KeyContainerPermission
    AccessEntries
    System.Security.Permissions.KeyContainerPermissionAccessEntryCollection)
  (define-field-port
    flags
    #f
    #f
    (property:)
    System.Security.Permissions.KeyContainerPermission
    Flags
    System.Security.Permissions.KeyContainerPermissionFlags))
