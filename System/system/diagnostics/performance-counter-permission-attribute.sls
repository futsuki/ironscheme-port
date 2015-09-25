(library (system diagnostics performance-counter-permission-attribute)
  (export new
          is?
          performance-counter-permission-attribute?
          create-permission
          category-name-get
          category-name-set!
          category-name-update!
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
             System.Diagnostics.PerformanceCounterPermissionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.PerformanceCounterPermissionAttribute a))
  (define (performance-counter-permission-attribute? a)
    (clr-is System.Diagnostics.PerformanceCounterPermissionAttribute a))
  (define-method-port
    create-permission
    System.Diagnostics.PerformanceCounterPermissionAttribute
    CreatePermission
    (System.Security.IPermission))
  (define-field-port
    category-name-get
    category-name-set!
    category-name-update!
    (property:)
    System.Diagnostics.PerformanceCounterPermissionAttribute
    CategoryName
    System.String)
  (define-field-port
    machine-name-get
    machine-name-set!
    machine-name-update!
    (property:)
    System.Diagnostics.PerformanceCounterPermissionAttribute
    MachineName
    System.String)
  (define-field-port
    permission-access-get
    permission-access-set!
    permission-access-update!
    (property:)
    System.Diagnostics.PerformanceCounterPermissionAttribute
    PermissionAccess
    System.Diagnostics.PerformanceCounterPermissionAccess))
