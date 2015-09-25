(library (system security access-control semaphore-access-rule)
  (export new is? semaphore-access-rule? semaphore-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.SemaphoreAccessRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.SemaphoreAccessRule a))
  (define (semaphore-access-rule? a)
    (clr-is System.Security.AccessControl.SemaphoreAccessRule a))
  (define-field-port
    semaphore-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.SemaphoreAccessRule
    SemaphoreRights
    System.Security.AccessControl.SemaphoreRights))
