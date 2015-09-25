(library (system security permissions zone-identity-permission)
  (export new
          is?
          zone-identity-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          copy
          intersect
          security-zone-get
          security-zone-set!
          security-zone-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.ZoneIdentityPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.ZoneIdentityPermission a))
  (define (zone-identity-permission? a)
    (clr-is System.Security.Permissions.ZoneIdentityPermission a))
  (define-method-port
    union
    System.Security.Permissions.ZoneIdentityPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.ZoneIdentityPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.ZoneIdentityPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.ZoneIdentityPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Permissions.ZoneIdentityPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.ZoneIdentityPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    security-zone-get
    security-zone-set!
    security-zone-update!
    (property:)
    System.Security.Permissions.ZoneIdentityPermission
    SecurityZone
    System.Security.SecurityZone))
