(library (system security permissions gac-identity-permission)
  (export new
          is?
          gac-identity-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          copy
          intersect)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.GacIdentityPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.GacIdentityPermission a))
  (define (gac-identity-permission? a)
    (clr-is System.Security.Permissions.GacIdentityPermission a))
  (define-method-port
    union
    System.Security.Permissions.GacIdentityPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.GacIdentityPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.GacIdentityPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.GacIdentityPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Permissions.GacIdentityPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.GacIdentityPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission)))
