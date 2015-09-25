(library (system security policy permission-request-evidence)
  (export new
          is?
          permission-request-evidence?
          copy
          to-string
          denied-permissions
          optional-permissions
          requested-permissions)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.PermissionRequestEvidence
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.PermissionRequestEvidence a))
  (define (permission-request-evidence? a)
    (clr-is System.Security.Policy.PermissionRequestEvidence a))
  (define-method-port
    copy
    System.Security.Policy.PermissionRequestEvidence
    Copy
    (System.Security.Policy.PermissionRequestEvidence))
  (define-method-port
    to-string
    System.Security.Policy.PermissionRequestEvidence
    ToString
    (System.String))
  (define-field-port
    denied-permissions
    #f
    #f
    (property:)
    System.Security.Policy.PermissionRequestEvidence
    DeniedPermissions
    System.Security.PermissionSet)
  (define-field-port
    optional-permissions
    #f
    #f
    (property:)
    System.Security.Policy.PermissionRequestEvidence
    OptionalPermissions
    System.Security.PermissionSet)
  (define-field-port
    requested-permissions
    #f
    #f
    (property:)
    System.Security.Policy.PermissionRequestEvidence
    RequestedPermissions
    System.Security.PermissionSet))
