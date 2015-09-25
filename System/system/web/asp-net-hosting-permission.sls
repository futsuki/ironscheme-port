(library (system web asp-net-hosting-permission)
  (export new
          is?
          asp-net-hosting-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          is-unrestricted?
          copy
          intersect
          level-get
          level-set!
          level-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Web.AspNetHostingPermission a ...)))))
  (define (is? a) (clr-is System.Web.AspNetHostingPermission a))
  (define (asp-net-hosting-permission? a)
    (clr-is System.Web.AspNetHostingPermission a))
  (define-method-port
    union
    System.Web.AspNetHostingPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Web.AspNetHostingPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Web.AspNetHostingPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Web.AspNetHostingPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Web.AspNetHostingPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Web.AspNetHostingPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Web.AspNetHostingPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    level-get
    level-set!
    level-update!
    (property:)
    System.Web.AspNetHostingPermission
    Level
    System.Web.AspNetHostingPermissionLevel))
