(library (system security policy default-policies)
  (export is?
          default-policies?
          full-trust-membership
          get-special-permission-set
          full-trust
          local-intranet
          internet
          skip-verification
          execution
          nothing
          everything)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Policy.DefaultPolicies a))
  (define (default-policies? a)
    (clr-is System.Security.Policy.DefaultPolicies a))
  (define-method-port
    full-trust-membership
    System.Security.Policy.DefaultPolicies
    FullTrustMembership
    (static:
      System.Security.Policy.StrongNameMembershipCondition
      System.String
      System.Security.Policy.DefaultPolicies+Key))
  (define-method-port
    get-special-permission-set
    System.Security.Policy.DefaultPolicies
    GetSpecialPermissionSet
    (static: System.Security.PermissionSet System.String))
  (define-field-port
    full-trust
    #f
    #f
    (static: property:)
    System.Security.Policy.DefaultPolicies
    FullTrust
    System.Security.PermissionSet)
  (define-field-port
    local-intranet
    #f
    #f
    (static: property:)
    System.Security.Policy.DefaultPolicies
    LocalIntranet
    System.Security.PermissionSet)
  (define-field-port
    internet
    #f
    #f
    (static: property:)
    System.Security.Policy.DefaultPolicies
    Internet
    System.Security.PermissionSet)
  (define-field-port
    skip-verification
    #f
    #f
    (static: property:)
    System.Security.Policy.DefaultPolicies
    SkipVerification
    System.Security.PermissionSet)
  (define-field-port
    execution
    #f
    #f
    (static: property:)
    System.Security.Policy.DefaultPolicies
    Execution
    System.Security.PermissionSet)
  (define-field-port
    nothing
    #f
    #f
    (static: property:)
    System.Security.Policy.DefaultPolicies
    Nothing
    System.Security.PermissionSet)
  (define-field-port
    everything
    #f
    #f
    (static: property:)
    System.Security.Policy.DefaultPolicies
    Everything
    System.Security.PermissionSet))
