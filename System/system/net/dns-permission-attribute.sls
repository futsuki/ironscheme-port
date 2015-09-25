(library (system net dns-permission-attribute)
  (export new is? dns-permission-attribute? create-permission)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.DnsPermissionAttribute a ...)))))
  (define (is? a) (clr-is System.Net.DnsPermissionAttribute a))
  (define (dns-permission-attribute? a)
    (clr-is System.Net.DnsPermissionAttribute a))
  (define-method-port
    create-permission
    System.Net.DnsPermissionAttribute
    CreatePermission
    (System.Security.IPermission)))
