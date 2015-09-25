(library (system security permissions security-attribute)
  (export is?
          security-attribute?
          create-permission
          unrestricted?-get
          unrestricted?-set!
          unrestricted?-update!
          action-get
          action-set!
          action-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Permissions.SecurityAttribute a))
  (define (security-attribute? a)
    (clr-is System.Security.Permissions.SecurityAttribute a))
  (define-method-port
    create-permission
    System.Security.Permissions.SecurityAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    unrestricted?-get
    unrestricted?-set!
    unrestricted?-update!
    (property:)
    System.Security.Permissions.SecurityAttribute
    Unrestricted
    System.Boolean)
  (define-field-port
    action-get
    action-set!
    action-update!
    (property:)
    System.Security.Permissions.SecurityAttribute
    Action
    System.Security.Permissions.SecurityAction))
