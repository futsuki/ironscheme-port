(library (system security permissions host-protection-permission)
  (export new
          is?
          host-protection-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          is-unrestricted?
          copy
          intersect
          resources-get
          resources-set!
          resources-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.HostProtectionPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.HostProtectionPermission a))
  (define (host-protection-permission? a)
    (clr-is System.Security.Permissions.HostProtectionPermission a))
  (define-method-port
    union
    System.Security.Permissions.HostProtectionPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.HostProtectionPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.HostProtectionPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.HostProtectionPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.HostProtectionPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.HostProtectionPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.HostProtectionPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    resources-get
    resources-set!
    resources-update!
    (property:)
    System.Security.Permissions.HostProtectionPermission
    Resources
    System.Security.Permissions.HostProtectionResource))
