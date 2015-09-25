(library (system net mail smtp-permission-attribute)
  (export new
          is?
          smtp-permission-attribute?
          create-permission
          access-get
          access-set!
          access-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Mail.SmtpPermissionAttribute a ...)))))
  (define (is? a) (clr-is System.Net.Mail.SmtpPermissionAttribute a))
  (define (smtp-permission-attribute? a)
    (clr-is System.Net.Mail.SmtpPermissionAttribute a))
  (define-method-port
    create-permission
    System.Net.Mail.SmtpPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    access-get
    access-set!
    access-update!
    (property:)
    System.Net.Mail.SmtpPermissionAttribute
    Access
    System.String))
