(library (system diagnostics event-log-permission-entry)
  (export new
          is?
          event-log-permission-entry?
          machine-name
          permission-access)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.EventLogPermissionEntry
             a
             ...)))))
  (define (is? a) (clr-is System.Diagnostics.EventLogPermissionEntry a))
  (define (event-log-permission-entry? a)
    (clr-is System.Diagnostics.EventLogPermissionEntry a))
  (define-field-port
    machine-name
    #f
    #f
    (property:)
    System.Diagnostics.EventLogPermissionEntry
    MachineName
    System.String)
  (define-field-port
    permission-access
    #f
    #f
    (property:)
    System.Diagnostics.EventLogPermissionEntry
    PermissionAccess
    System.Diagnostics.EventLogPermissionAccess))
