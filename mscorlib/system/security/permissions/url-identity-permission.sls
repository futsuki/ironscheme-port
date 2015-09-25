(library (system security permissions url-identity-permission)
  (export new
          is?
          url-identity-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          copy
          intersect
          url-get
          url-set!
          url-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.UrlIdentityPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.UrlIdentityPermission a))
  (define (url-identity-permission? a)
    (clr-is System.Security.Permissions.UrlIdentityPermission a))
  (define-method-port
    union
    System.Security.Permissions.UrlIdentityPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.UrlIdentityPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.UrlIdentityPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.UrlIdentityPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    copy
    System.Security.Permissions.UrlIdentityPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.UrlIdentityPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    url-get
    url-set!
    url-update!
    (property:)
    System.Security.Permissions.UrlIdentityPermission
    Url
    System.String))
