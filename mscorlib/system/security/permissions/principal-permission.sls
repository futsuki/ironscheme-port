(library (system security permissions principal-permission)
  (export new
          is?
          principal-permission?
          get-hash-code
          union
          from-xml
          is-subset-of?
          equals?
          to-xml
          is-unrestricted?
          copy
          to-string
          intersect
          demand)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.PrincipalPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.PrincipalPermission a))
  (define (principal-permission? a)
    (clr-is System.Security.Permissions.PrincipalPermission a))
  (define-method-port
    get-hash-code
    System.Security.Permissions.PrincipalPermission
    GetHashCode
    (System.Int32))
  (define-method-port
    union
    System.Security.Permissions.PrincipalPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.PrincipalPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.PrincipalPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    equals?
    System.Security.Permissions.PrincipalPermission
    Equals
    (System.Boolean System.Object))
  (define-method-port
    to-xml
    System.Security.Permissions.PrincipalPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.PrincipalPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.PrincipalPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    to-string
    System.Security.Permissions.PrincipalPermission
    ToString
    (System.String))
  (define-method-port
    intersect
    System.Security.Permissions.PrincipalPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    demand
    System.Security.Permissions.PrincipalPermission
    Demand
    (System.Void)))
