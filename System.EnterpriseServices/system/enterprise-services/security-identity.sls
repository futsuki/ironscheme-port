(library (system enterprise-services security-identity)
  (export is?
          security-identity?
          account-name
          authentication-level
          authentication-service
          impersonation-level)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.EnterpriseServices.SecurityIdentity a))
  (define (security-identity? a)
    (clr-is System.EnterpriseServices.SecurityIdentity a))
  (define-field-port
    account-name
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityIdentity
    AccountName
    System.String)
  (define-field-port
    authentication-level
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityIdentity
    AuthenticationLevel
    System.EnterpriseServices.AuthenticationOption)
  (define-field-port
    authentication-service
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityIdentity
    AuthenticationService
    System.Int32)
  (define-field-port
    impersonation-level
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityIdentity
    ImpersonationLevel
    System.EnterpriseServices.ImpersonationLevelOption))
