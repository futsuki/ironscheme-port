(library (system net mail smtp-permission)
  (export new
          is?
          smtp-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          add-permission
          is-unrestricted?
          copy
          intersect
          access)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Mail.SmtpPermission a ...)))))
  (define (is? a) (clr-is System.Net.Mail.SmtpPermission a))
  (define (smtp-permission? a)
    (clr-is System.Net.Mail.SmtpPermission a))
  (define-method-port
    union
    System.Net.Mail.SmtpPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Net.Mail.SmtpPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Net.Mail.SmtpPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Net.Mail.SmtpPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    add-permission
    System.Net.Mail.SmtpPermission
    AddPermission
    (System.Void System.Net.Mail.SmtpAccess))
  (define-method-port
    is-unrestricted?
    System.Net.Mail.SmtpPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Net.Mail.SmtpPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Net.Mail.SmtpPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    access
    #f
    #f
    (property:)
    System.Net.Mail.SmtpPermission
    Access
    System.Net.Mail.SmtpAccess))
