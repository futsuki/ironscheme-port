(library (system security access-control audit-rule)
  (export is? audit-rule? audit-flags)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.AccessControl.AuditRule a))
  (define (audit-rule? a)
    (clr-is System.Security.AccessControl.AuditRule a))
  (define-field-port
    audit-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.AuditRule
    AuditFlags
    System.Security.AccessControl.AuditFlags))
