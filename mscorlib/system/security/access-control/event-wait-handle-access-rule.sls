(library (system security access-control event-wait-handle-access-rule)
  (export new
          is?
          event-wait-handle-access-rule?
          event-wait-handle-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.EventWaitHandleAccessRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.EventWaitHandleAccessRule a))
  (define (event-wait-handle-access-rule? a)
    (clr-is System.Security.AccessControl.EventWaitHandleAccessRule a))
  (define-field-port
    event-wait-handle-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.EventWaitHandleAccessRule
    EventWaitHandleRights
    System.Security.AccessControl.EventWaitHandleRights))
