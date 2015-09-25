(library (system security policy application-security-manager)
  (export is?
          application-security-manager?
          determine-application-trust?
          application-trust-manager
          user-application-trusts)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Policy.ApplicationSecurityManager a))
  (define (application-security-manager? a)
    (clr-is System.Security.Policy.ApplicationSecurityManager a))
  (define-method-port
    determine-application-trust?
    System.Security.Policy.ApplicationSecurityManager
    DetermineApplicationTrust
    (static:
      System.Boolean
      System.ActivationContext
      System.Security.Policy.TrustManagerContext))
  (define-field-port
    application-trust-manager
    #f
    #f
    (static: property:)
    System.Security.Policy.ApplicationSecurityManager
    ApplicationTrustManager
    System.Security.Policy.IApplicationTrustManager)
  (define-field-port
    user-application-trusts
    #f
    #f
    (static: property:)
    System.Security.Policy.ApplicationSecurityManager
    UserApplicationTrusts
    System.Security.Policy.ApplicationTrustCollection))
