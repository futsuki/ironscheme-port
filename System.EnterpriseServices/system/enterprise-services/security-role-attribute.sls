(library (system enterprise-services security-role-attribute)
  (export new
          is?
          security-role-attribute?
          description-get
          description-set!
          description-update!
          role-get
          role-set!
          role-update!
          set-everyone-access?-get
          set-everyone-access?-set!
          set-everyone-access?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.SecurityRoleAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.SecurityRoleAttribute a))
  (define (security-role-attribute? a)
    (clr-is System.EnterpriseServices.SecurityRoleAttribute a))
  (define-field-port
    description-get
    description-set!
    description-update!
    (property:)
    System.EnterpriseServices.SecurityRoleAttribute
    Description
    System.String)
  (define-field-port
    role-get
    role-set!
    role-update!
    (property:)
    System.EnterpriseServices.SecurityRoleAttribute
    Role
    System.String)
  (define-field-port
    set-everyone-access?-get
    set-everyone-access?-set!
    set-everyone-access?-update!
    (property:)
    System.EnterpriseServices.SecurityRoleAttribute
    SetEveryoneAccess
    System.Boolean))
