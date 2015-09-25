(library (system security policy policy-level)
  (export is?
          policy-level?
          add-named-permission-set
          from-xml
          change-named-permission-set
          remove-named-permission-set
          get-named-permission-set
          recover
          to-xml
          resolve-matching-code-groups
          remove-full-trust-assembly
          resolve
          create-app-domain-level
          reset
          add-full-trust-assembly
          full-trust-assemblies
          label
          named-permission-sets
          root-code-group-get
          root-code-group-set!
          root-code-group-update!
          store-location
          type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Policy.PolicyLevel a))
  (define (policy-level? a)
    (clr-is System.Security.Policy.PolicyLevel a))
  (define-method-port
    add-named-permission-set
    System.Security.Policy.PolicyLevel
    AddNamedPermissionSet
    (System.Void System.Security.NamedPermissionSet))
  (define-method-port
    from-xml
    System.Security.Policy.PolicyLevel
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    change-named-permission-set
    System.Security.Policy.PolicyLevel
    ChangeNamedPermissionSet
    (System.Security.NamedPermissionSet
      System.String
      System.Security.PermissionSet))
  (define-method-port
    remove-named-permission-set
    System.Security.Policy.PolicyLevel
    RemoveNamedPermissionSet
    (System.Security.NamedPermissionSet System.String)
    (System.Security.NamedPermissionSet
      System.Security.NamedPermissionSet))
  (define-method-port
    get-named-permission-set
    System.Security.Policy.PolicyLevel
    GetNamedPermissionSet
    (System.Security.NamedPermissionSet System.String))
  (define-method-port
    recover
    System.Security.Policy.PolicyLevel
    Recover
    (System.Void))
  (define-method-port
    to-xml
    System.Security.Policy.PolicyLevel
    ToXml
    (System.Security.SecurityElement))
  (define-method-port
    resolve-matching-code-groups
    System.Security.Policy.PolicyLevel
    ResolveMatchingCodeGroups
    (System.Security.Policy.CodeGroup System.Security.Policy.Evidence))
  (define-method-port
    remove-full-trust-assembly
    System.Security.Policy.PolicyLevel
    RemoveFullTrustAssembly
    (System.Void System.Security.Policy.StrongNameMembershipCondition)
    (System.Void System.Security.Policy.StrongName))
  (define-method-port
    resolve
    System.Security.Policy.PolicyLevel
    Resolve
    (System.Security.Policy.PolicyStatement
      System.Security.Policy.Evidence))
  (define-method-port
    create-app-domain-level
    System.Security.Policy.PolicyLevel
    CreateAppDomainLevel
    (static: System.Security.Policy.PolicyLevel))
  (define-method-port
    reset
    System.Security.Policy.PolicyLevel
    Reset
    (System.Void))
  (define-method-port
    add-full-trust-assembly
    System.Security.Policy.PolicyLevel
    AddFullTrustAssembly
    (System.Void System.Security.Policy.StrongNameMembershipCondition)
    (System.Void System.Security.Policy.StrongName))
  (define-field-port
    full-trust-assemblies
    #f
    #f
    (property:)
    System.Security.Policy.PolicyLevel
    FullTrustAssemblies
    System.Collections.IList)
  (define-field-port
    label
    #f
    #f
    (property:)
    System.Security.Policy.PolicyLevel
    Label
    System.String)
  (define-field-port
    named-permission-sets
    #f
    #f
    (property:)
    System.Security.Policy.PolicyLevel
    NamedPermissionSets
    System.Collections.IList)
  (define-field-port
    root-code-group-get
    root-code-group-set!
    root-code-group-update!
    (property:)
    System.Security.Policy.PolicyLevel
    RootCodeGroup
    System.Security.Policy.CodeGroup)
  (define-field-port
    store-location
    #f
    #f
    (property:)
    System.Security.Policy.PolicyLevel
    StoreLocation
    System.String)
  (define-field-port
    type
    #f
    #f
    (property:)
    System.Security.Policy.PolicyLevel
    Type
    System.Security.PolicyLevelType))
