(library (system security permissions reflection-permission)
  (export new
          is?
          reflection-permission?
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
             System.Security.Permissions.ReflectionPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.ReflectionPermission a))
  (define (reflection-permission? a)
    (clr-is System.Security.Permissions.ReflectionPermission a))
  (define-method-port
    union
    System.Security.Permissions.ReflectionPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.ReflectionPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.ReflectionPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.ReflectionPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.ReflectionPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.ReflectionPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.ReflectionPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    flags-get
    flags-set!
    flags-update!
    (property:)
    System.Security.Permissions.ReflectionPermission
    Flags
    System.Security.Permissions.ReflectionPermissionFlag))
