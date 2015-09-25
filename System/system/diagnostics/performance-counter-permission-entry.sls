(library (system diagnostics performance-counter-permission-entry)
  (export new
          is?
          performance-counter-permission-entry?
          category-name
          machine-name
          permission-access)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.PerformanceCounterPermissionEntry
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.PerformanceCounterPermissionEntry a))
  (define (performance-counter-permission-entry? a)
    (clr-is System.Diagnostics.PerformanceCounterPermissionEntry a))
  (define-field-port
    category-name
    #f
    #f
    (property:)
    System.Diagnostics.PerformanceCounterPermissionEntry
    CategoryName
    System.String)
  (define-field-port
    machine-name
    #f
    #f
    (property:)
    System.Diagnostics.PerformanceCounterPermissionEntry
    MachineName
    System.String)
  (define-field-port
    permission-access
    #f
    #f
    (property:)
    System.Diagnostics.PerformanceCounterPermissionEntry
    PermissionAccess
    System.Diagnostics.PerformanceCounterPermissionAccess))
