(library (system diagnostics performance-counter-permission)
  (export new is? performance-counter-permission? permission-entries)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.PerformanceCounterPermission
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.PerformanceCounterPermission a))
  (define (performance-counter-permission? a)
    (clr-is System.Diagnostics.PerformanceCounterPermission a))
  (define-field-port
    permission-entries
    #f
    #f
    (property:)
    System.Diagnostics.PerformanceCounterPermission
    PermissionEntries
    System.Diagnostics.PerformanceCounterPermissionEntryCollection))
