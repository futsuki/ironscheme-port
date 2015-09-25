(library (system configuration configuration-permission)
  (export new
          is?
          configuration-permission?
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
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationPermission a))
  (define (configuration-permission? a)
    (clr-is System.Configuration.ConfigurationPermission a))
  (define-method-port
    union
    System.Configuration.ConfigurationPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Configuration.ConfigurationPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Configuration.ConfigurationPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Configuration.ConfigurationPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Configuration.ConfigurationPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Configuration.ConfigurationPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Configuration.ConfigurationPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission)))
