(library (system web asp-net-hosting-permission-attribute)
  (export new
          is?
          asp-net-hosting-permission-attribute?
          create-permission
          level-get
          level-set!
          level-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Web.AspNetHostingPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Web.AspNetHostingPermissionAttribute a))
  (define (asp-net-hosting-permission-attribute? a)
    (clr-is System.Web.AspNetHostingPermissionAttribute a))
  (define-method-port
    create-permission
    System.Web.AspNetHostingPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    level-get
    level-set!
    level-update!
    (property:)
    System.Web.AspNetHostingPermissionAttribute
    Level
    System.Web.AspNetHostingPermissionLevel))
