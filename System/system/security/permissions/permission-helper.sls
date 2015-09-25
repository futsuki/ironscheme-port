(library (system security permissions permission-helper)
  (export new is? permission-helper?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.PermissionHelper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.PermissionHelper a))
  (define (permission-helper? a)
    (clr-is System.Security.Permissions.PermissionHelper a)))
