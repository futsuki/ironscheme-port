(library (system security access-control mutex-access-rule)
  (export new is? mutex-access-rule? mutex-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.MutexAccessRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.MutexAccessRule a))
  (define (mutex-access-rule? a)
    (clr-is System.Security.AccessControl.MutexAccessRule a))
  (define-field-port
    mutex-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.MutexAccessRule
    MutexRights
    System.Security.AccessControl.MutexRights))
