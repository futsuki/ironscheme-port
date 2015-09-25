(library (system net web-permission)
  (export new
          is?
          web-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          add-permission
          is-unrestricted?
          copy
          intersect
          accept-list
          connect-list)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebPermission a ...)))))
  (define (is? a) (clr-is System.Net.WebPermission a))
  (define (web-permission? a) (clr-is System.Net.WebPermission a))
  (define-method-port
    union
    System.Net.WebPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Net.WebPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Net.WebPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Net.WebPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    add-permission
    System.Net.WebPermission
    AddPermission
    (System.Void
      System.Net.NetworkAccess
      System.Text.RegularExpressions.Regex)
    (System.Void System.Net.NetworkAccess System.String))
  (define-method-port
    is-unrestricted?
    System.Net.WebPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Net.WebPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Net.WebPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    accept-list
    #f
    #f
    (property:)
    System.Net.WebPermission
    AcceptList
    System.Collections.IEnumerator)
  (define-field-port
    connect-list
    #f
    #f
    (property:)
    System.Net.WebPermission
    ConnectList
    System.Collections.IEnumerator))
