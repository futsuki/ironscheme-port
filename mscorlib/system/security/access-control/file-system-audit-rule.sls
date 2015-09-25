(library (system security access-control file-system-audit-rule)
  (export new is? file-system-audit-rule? file-system-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.FileSystemAuditRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.FileSystemAuditRule a))
  (define (file-system-audit-rule? a)
    (clr-is System.Security.AccessControl.FileSystemAuditRule a))
  (define-field-port
    file-system-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.FileSystemAuditRule
    FileSystemRights
    System.Security.AccessControl.FileSystemRights))
