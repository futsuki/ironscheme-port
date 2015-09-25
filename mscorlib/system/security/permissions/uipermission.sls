(library (system security permissions uipermission)
  (export new
          is?
          uipermission?
          union
          from-xml
          is-subset-of?
          to-xml
          is-unrestricted?
          copy
          intersect
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
         #'(clr-new System.Security.Permissions.UIPermission a ...)))))
  (define (is? a) (clr-is System.Security.Permissions.UIPermission a))
  (define (uipermission? a)
    (clr-is System.Security.Permissions.UIPermission a))
  (define-method-port
    union
    System.Security.Permissions.UIPermission
    Union
    (System.Security.IPermission System.Security.IPermission))
  (define-method-port
    from-xml
    System.Security.Permissions.UIPermission
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    is-subset-of?
    System.Security.Permissions.UIPermission
    IsSubsetOf
    (System.Boolean System.Security.IPermission))
  (define-method-port
    to-xml
    System.Security.Permissions.UIPermission
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    is-unrestricted?
    System.Security.Permissions.UIPermission
    IsUnrestricted
    (System.Boolean))
  (define-method-port
    copy
    System.Security.Permissions.UIPermission
    Copy
    (System.Security.IPermission))
  (define-method-port
    intersect
    System.Security.Permissions.UIPermission
    Intersect
    (System.Security.IPermission System.Security.IPermission))
  (define-field-port
    clipboard-get
    clipboard-set!
    clipboard-update!
    (property:)
    System.Security.Permissions.UIPermission
    Clipboard
    System.Security.Permissions.UIPermissionClipboard)
  (define-field-port
    window-get
    window-set!
    window-update!
    (property:)
    System.Security.Permissions.UIPermission
    Window
    System.Security.Permissions.UIPermissionWindow))
