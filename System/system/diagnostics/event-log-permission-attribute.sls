(library (system diagnostics event-log-permission-attribute)
  (export new
          is?
          event-log-permission-attribute?
          create-permission
          machine-name-get
          machine-name-set!
          machine-name-update!
          permission-access-get
          permission-access-set!
          permission-access-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.EventLogPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.EventLogPermissionAttribute a))
  (define (event-log-permission-attribute? a)
    (clr-is System.Diagnostics.EventLogPermissionAttribute a))
  (define-method-port
    create-permission
    System.Diagnostics.EventLogPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    machine-name-get
    machine-name-set!
    machine-name-update!
    (property:)
    System.Diagnostics.EventLogPermissionAttribute
    MachineName
    System.String)
  (define-field-port
    permission-access-get
    permission-access-set!
    permission-access-update!
    (property:)
    System.Diagnostics.EventLogPermissionAttribute
    PermissionAccess
    System.Diagnostics.EventLogPermissionAccess))
