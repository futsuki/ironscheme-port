(library (system security access-control event-wait-handle-audit-rule)
  (export new
          is?
          event-wait-handle-audit-rule?
          event-wait-handle-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.EventWaitHandleAuditRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.EventWaitHandleAuditRule a))
  (define (event-wait-handle-audit-rule? a)
    (clr-is System.Security.AccessControl.EventWaitHandleAuditRule a))
  (define-field-port
    event-wait-handle-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.EventWaitHandleAuditRule
    EventWaitHandleRights
    System.Security.AccessControl.EventWaitHandleRights))
