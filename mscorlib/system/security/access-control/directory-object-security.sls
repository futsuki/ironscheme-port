(library (system security access-control directory-object-security)
  (export is?
          directory-object-security?
          get-access-rules
          audit-rule-factory
          get-audit-rules
          access-rule-factory)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.DirectoryObjectSecurity a))
  (define (directory-object-security? a)
    (clr-is System.Security.AccessControl.DirectoryObjectSecurity a))
  (define-method-port
    get-access-rules
    System.Security.AccessControl.DirectoryObjectSecurity
    GetAccessRules
    (System.Security.AccessControl.AuthorizationRuleCollection
      System.Boolean
      System.Boolean
      System.Type))
  (define-method-port
    audit-rule-factory
    System.Security.AccessControl.DirectoryObjectSecurity
    AuditRuleFactory
    (System.Security.AccessControl.AuditRule
      System.Security.Principal.IdentityReference
      System.Int32
      System.Boolean
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.AuditFlags
      System.Guid
      System.Guid))
  (define-method-port
    get-audit-rules
    System.Security.AccessControl.DirectoryObjectSecurity
    GetAuditRules
    (System.Security.AccessControl.AuthorizationRuleCollection
      System.Boolean
      System.Boolean
      System.Type))
  (define-method-port
    access-rule-factory
    System.Security.AccessControl.DirectoryObjectSecurity
    AccessRuleFactory
    (System.Security.AccessControl.AccessRule
      System.Security.Principal.IdentityReference
      System.Int32
      System.Boolean
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.AccessControlType
      System.Guid
      System.Guid)))
