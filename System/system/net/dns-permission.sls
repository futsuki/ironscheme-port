(library (system net dns-permission)
  (export new
          is?
          dns-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          is-unrestricted?
          copy
          intersect)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.DnsPermission a ...)))))
  (define (is? a) (clr-is System.Net.DnsPermission a))
  (define (dns-permission? a) (clr-is System.Net.DnsPermission a))
  (define-method-port
    union
    System.Net.DnsPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Net.DnsPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Net.DnsPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Net.DnsPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Net.DnsPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Net.DnsPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Net.DnsPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission)))
