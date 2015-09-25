(library (system security host-security-manager)
  (export new
          is?
          host-security-manager?
          resolve-policy
          provide-app-domain-evidence
          provide-assembly-evidence
          determine-application-trust
          domain-policy
          flags)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.HostSecurityManager a ...)))))
  (define (is? a) (clr-is System.Security.HostSecurityManager a))
  (define (host-security-manager? a)
    (clr-is System.Security.HostSecurityManager a))
  (define-method-port
    resolve-policy
    System.Security.HostSecurityManager
    ResolvePolicy
    (System.Security.PermissionSet System.Security.Policy.Evidence))
  (define-method-port
    provide-app-domain-evidence
    System.Security.HostSecurityManager
    ProvideAppDomainEvidence
    (System.Security.Policy.Evidence System.Security.Policy.Evidence))
  (define-method-port
    provide-assembly-evidence
    System.Security.HostSecurityManager
    ProvideAssemblyEvidence
    (System.Security.Policy.Evidence
      System.Reflection.Assembly
      System.Security.Policy.Evidence))
  (define-method-port
    determine-application-trust
    System.Security.HostSecurityManager
    DetermineApplicationTrust
    (System.Security.Policy.ApplicationTrust
      System.Security.Policy.Evidence
      System.Security.Policy.Evidence
      System.Security.Policy.TrustManagerContext))
  (define-field-port
    domain-policy
    #f
    #f
    (property:)
    System.Security.HostSecurityManager
    DomainPolicy
    System.Security.Policy.PolicyLevel)
  (define-field-port
    flags
    #f
    #f
    (property:)
    System.Security.HostSecurityManager
    Flags
    System.Security.HostSecurityManagerOptions))
