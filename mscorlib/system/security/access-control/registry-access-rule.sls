(library (system security access-control registry-access-rule)
  (export new is? registry-access-rule? registry-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.RegistryAccessRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.RegistryAccessRule a))
  (define (registry-access-rule? a)
    (clr-is System.Security.AccessControl.RegistryAccessRule a))
  (define-field-port
    registry-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.RegistryAccessRule
    RegistryRights
    System.Security.AccessControl.RegistryRights))
