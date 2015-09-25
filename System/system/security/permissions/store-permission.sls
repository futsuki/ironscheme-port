(library (system security permissions store-permission)
  (export new
          is?
          store-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          is-unrestricted?
          copy
          intersect
          flags-get
          flags-set!
          flags-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.StorePermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.StorePermission a))
  (define (store-permission? a)
    (clr-is System.Security.Permissions.StorePermission a))
  (define-method-port
    union
    System.Security.Permissions.StorePermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.StorePermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.StorePermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.StorePermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.StorePermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.StorePermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.StorePermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    (property:)
    System.Security.Permissions.StorePermission
    Flags
    System.Security.Permissions.StorePermissionFlags))
