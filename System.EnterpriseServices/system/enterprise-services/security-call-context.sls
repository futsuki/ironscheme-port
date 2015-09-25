(library (system enterprise-services security-call-context)
  (export is?
          security-call-context?
          is-user-in-role?
          is-caller-in-role?
          callers
          current-call
          direct-caller
          is-security-enabled?
          min-authentication-level
          num-callers
          original-caller)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.EnterpriseServices.SecurityCallContext a))
  (define (security-call-context? a)
    (clr-is System.EnterpriseServices.SecurityCallContext a))
  (define-method-port
    is-user-in-role?
    System.EnterpriseServices.SecurityCallContext
    IsUserInRole
    (System.Boolean System.String System.String))
  (define-method-port
    is-caller-in-role?
    System.EnterpriseServices.SecurityCallContext
    IsCallerInRole
    (System.Boolean System.String))
  (define-field-port
    callers
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityCallContext
    Callers
    System.EnterpriseServices.SecurityCallers)
  (define-field-port
    current-call
    #f
    #f
    (static: property:)
    System.EnterpriseServices.SecurityCallContext
    CurrentCall
    System.EnterpriseServices.SecurityCallContext)
  (define-field-port
    direct-caller
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityCallContext
    DirectCaller
    System.EnterpriseServices.SecurityIdentity)
  (define-field-port
    is-security-enabled?
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityCallContext
    IsSecurityEnabled
    System.Boolean)
  (define-field-port
    min-authentication-level
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityCallContext
    MinAuthenticationLevel
    System.Int32)
  (define-field-port
    num-callers
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityCallContext
    NumCallers
    System.Int32)
  (define-field-port
    original-caller
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityCallContext
    OriginalCaller
    System.EnterpriseServices.SecurityIdentity))
