(library (system
          enterprise-services
          application-access-control-attribute)
  (export new
          is?
          application-access-control-attribute?
          access-checks-level-get
          access-checks-level-set!
          access-checks-level-update!
          authentication-get
          authentication-set!
          authentication-update!
          impersonation-level-get
          impersonation-level-set!
          impersonation-level-update!
          value?-get
          value?-set!
          value?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ApplicationAccessControlAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.ApplicationAccessControlAttribute
      a))
  (define (application-access-control-attribute? a)
    (clr-is
      System.EnterpriseServices.ApplicationAccessControlAttribute
      a))
  (define-field-port
    access-checks-level-get
    access-checks-level-set!
    access-checks-level-update!
    (property:)
    System.EnterpriseServices.ApplicationAccessControlAttribute
    AccessChecksLevel
    System.EnterpriseServices.AccessChecksLevelOption)
  (define-field-port
    authentication-get
    authentication-set!
    authentication-update!
    (property:)
    System.EnterpriseServices.ApplicationAccessControlAttribute
    Authentication
    System.EnterpriseServices.AuthenticationOption)
  (define-field-port
    impersonation-level-get
    impersonation-level-set!
    impersonation-level-update!
    (property:)
    System.EnterpriseServices.ApplicationAccessControlAttribute
    ImpersonationLevel
    System.EnterpriseServices.ImpersonationLevelOption)
  (define-field-port
    value?-get
    value?-set!
    value?-update!
    (property:)
    System.EnterpriseServices.ApplicationAccessControlAttribute
    Value
    System.Boolean))
