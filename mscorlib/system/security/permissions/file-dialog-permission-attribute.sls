(library (system security permissions file-dialog-permission-attribute)
  (export new
          is?
          file-dialog-permission-attribute?
          create-permission
          open?-get
          open?-set!
          open?-update!
          save?-get
          save?-set!
          save?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.FileDialogPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Permissions.FileDialogPermissionAttribute
      a))
  (define (file-dialog-permission-attribute? a)
    (clr-is
      System.Security.Permissions.FileDialogPermissionAttribute
      a))
  (define-method-port
    create-permission
    System.Security.Permissions.FileDialogPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    open?-get
    open?-set!
    open?-update!
    (property:)
    System.Security.Permissions.FileDialogPermissionAttribute
    Open
    System.Boolean)
  (define-field-port
    save?-get
    save?-set!
    save?-update!
    (property:)
    System.Security.Permissions.FileDialogPermissionAttribute
    Save
    System.Boolean))
