(library (system security access-control mutex-audit-rule)
  (export new is? mutex-audit-rule? mutex-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.MutexAuditRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.MutexAuditRule a))
  (define (mutex-audit-rule? a)
    (clr-is System.Security.AccessControl.MutexAuditRule a))
  (define-field-port
    mutex-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.MutexAuditRule
    MutexRights
    System.Security.AccessControl.MutexRights))
