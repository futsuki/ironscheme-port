(library (system security access-control registry-audit-rule)
  (export new is? registry-audit-rule? registry-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.RegistryAuditRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.RegistryAuditRule a))
  (define (registry-audit-rule? a)
    (clr-is System.Security.AccessControl.RegistryAuditRule a))
  (define-field-port
    registry-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.RegistryAuditRule
    RegistryRights
    System.Security.AccessControl.RegistryRights))
