(library (system security access-control semaphore-audit-rule)
  (export new is? semaphore-audit-rule? semaphore-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.SemaphoreAuditRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.SemaphoreAuditRule a))
  (define (semaphore-audit-rule? a)
    (clr-is System.Security.AccessControl.SemaphoreAuditRule a))
  (define-field-port
    semaphore-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.SemaphoreAuditRule
    SemaphoreRights
    System.Security.AccessControl.SemaphoreRights))
