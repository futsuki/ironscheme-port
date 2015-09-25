(library (system security permission-builder)
  (export is? permission-builder? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.PermissionBuilder a))
  (define (permission-builder? a)
    (clr-is System.Security.PermissionBuilder a))
  (define-method-port
    create
    System.Security.PermissionBuilder
    Create
    (static: System.Security.IPermission System.Type)
    (static:
      System.Security.IPermission
      System.String
      System.Security.SecurityElement)
    (static:
      System.Security.IPermission
      System.Security.SecurityElement)
    (static:
      System.Security.IPermission
      System.String
      System.Security.Permissions.PermissionState)))
