(library (system security permissions file-dialog-permission)
  (export new
          is?
          file-dialog-permission?
          union
          from-xml
          is-subset-of?
          to-xml
          is-unrestricted?
          copy
          intersect
          access-get
          access-set!
          access-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.FileDialogPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.FileDialogPermission a))
  (define (file-dialog-permission? a)
    (clr-is System.Security.Permissions.FileDialogPermission a))
  (define-method-port
    union
    System.Security.Permissions.FileDialogPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.FileDialogPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.FileDialogPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.FileDialogPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.FileDialogPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.FileDialogPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.FileDialogPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    access-get
    access-set!
    access-update!
    (property:)
    System.Security.Permissions.FileDialogPermission
    Access
    System.Security.Permissions.FileDialogPermissionAccess))
