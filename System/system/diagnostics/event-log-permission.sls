(library (system diagnostics event-log-permission)
  (export new is? event-log-permission? permission-entries)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.EventLogPermission a ...)))))
  (define (is? a) (clr-is System.Diagnostics.EventLogPermission a))
  (define (event-log-permission? a)
    (clr-is System.Diagnostics.EventLogPermission a))
  (define-field-port
    permission-entries
    #f
    #f
    (property:)
    System.Diagnostics.EventLogPermission
    PermissionEntries
    System.Diagnostics.EventLogPermissionEntryCollection))
