(library (system security security-manager)
  (export is?
          security-manager?
          get-zone-and-origin
          load-policy-level-from-string
          resolve-policy
          resolve-policy-groups
          resolve-system-policy
          save-policy-level
          policy-hierarchy
          save-policy
          load-policy-level-from-file
          is-granted?
          check-execution-rights?-get
          check-execution-rights?-set!
          check-execution-rights?-update!
          security-enabled?-get
          security-enabled?-set!
          security-enabled?-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.SecurityManager a))
  (define (security-manager? a)
    (clr-is System.Security.SecurityManager a))
  (define-method-port
    get-zone-and-origin
    System.Security.SecurityManager
    GetZoneAndOrigin
    (static:
      System.Void
      System.Collections.ArrayList&
      System.Collections.ArrayList&))
  (define-method-port
    load-policy-level-from-string
    System.Security.SecurityManager
    LoadPolicyLevelFromString
    (static:
      System.Security.Policy.PolicyLevel
      System.String
      System.Security.PolicyLevelType))
  (define-method-port
    resolve-policy
    System.Security.SecurityManager
    ResolvePolicy
    (static:
      System.Security.PermissionSet
      System.Security.Policy.Evidence
      System.Security.PermissionSet
      System.Security.PermissionSet
      System.Security.PermissionSet
      System.Security.PermissionSet&)
    (static:
      System.Security.PermissionSet
      System.Security.Policy.Evidence[])
    (static:
      System.Security.PermissionSet
      System.Security.Policy.Evidence))
  (define-method-port
    resolve-policy-groups
    System.Security.SecurityManager
    ResolvePolicyGroups
    (static:
      System.Collections.IEnumerator
      System.Security.Policy.Evidence))
  (define-method-port
    resolve-system-policy
    System.Security.SecurityManager
    ResolveSystemPolicy
    (static:
      System.Security.PermissionSet
      System.Security.Policy.Evidence))
  (define-method-port
    save-policy-level
    System.Security.SecurityManager
    SavePolicyLevel
    (static: System.Void System.Security.Policy.PolicyLevel))
  (define-method-port
    policy-hierarchy
    System.Security.SecurityManager
    PolicyHierarchy
    (static: System.Collections.IEnumerator))
  (define-method-port
    save-policy
    System.Security.SecurityManager
    SavePolicy
    (static: System.Void))
  (define-method-port
    load-policy-level-from-file
    System.Security.SecurityManager
    LoadPolicyLevelFromFile
    (static:
      System.Security.Policy.PolicyLevel
      System.String
      System.Security.PolicyLevelType))
  (define-method-port
    is-granted?
    System.Security.SecurityManager
    IsGranted
    (static: System.Boolean System.Security.IPermission))
  (define-field-port
    check-execution-rights?-get
    check-execution-rights?-set!
    check-execution-rights?-update!
    (static: property:)
    System.Security.SecurityManager
    CheckExecutionRights
    System.Boolean)
  (define-field-port
    security-enabled?-get
    security-enabled?-set!
    security-enabled?-update!
    (static: property:)
    System.Security.SecurityManager
    SecurityEnabled
    System.Boolean))
