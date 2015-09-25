(library (system security permissions uipermission-attribute)
  (export new
          is?
          uipermission-attribute?
          create-permission
          clipboard-get
          clipboard-set!
          clipboard-update!
          window-get
          window-set!
          window-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.UIPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.UIPermissionAttribute a))
  (define (uipermission-attribute? a)
    (clr-is System.Security.Permissions.UIPermissionAttribute a))
  (define-method-port
    create-permission
    System.Security.Permissions.UIPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    clipboard-get
    clipboard-set!
    clipboard-update!
    (property:)
    System.Security.Permissions.UIPermissionAttribute
    Clipboard
    System.Security.Permissions.UIPermissionClipboard)
  (define-field-port
    window-get
    window-set!
    window-update!
    (property:)
    System.Security.Permissions.UIPermissionAttribute
    Window
    System.Security.Permissions.UIPermissionWindow))
