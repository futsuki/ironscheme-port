(library (system security permissions resource-permission-base-entry)
  (export new
          is?
          resource-permission-base-entry?
          permission-access
          permission-access-path)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.ResourcePermissionBaseEntry
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.ResourcePermissionBaseEntry a))
  (define (resource-permission-base-entry? a)
    (clr-is System.Security.Permissions.ResourcePermissionBaseEntry a))
  (define-field-port
    permission-access
    #f
    #f
    (property:)
    System.Security.Permissions.ResourcePermissionBaseEntry
    PermissionAccess
    System.Int32)
  (define-field-port
    permission-access-path
    #f
    #f
    (property:)
    System.Security.Permissions.ResourcePermissionBaseEntry
    PermissionAccessPath
    System.String[]))
