(library (system configuration configuration-permission-attribute)
  (export new is? configuration-permission-attribute? create-permission)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationPermissionAttribute a))
  (define (configuration-permission-attribute? a)
    (clr-is System.Configuration.ConfigurationPermissionAttribute a))
  (define-method-port
    create-permission
    System.Configuration.ConfigurationPermissionAttribute
    CreatePermission
    (System.Security.IPermission)))
