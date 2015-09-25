(library (system security access-control file-system-security)
  (export is?
          file-system-security?
          add-access-rule
          set-access-rule
          remove-audit-rule-all
          remove-audit-rule?
          remove-access-rule-all
          remove-access-rule-specific
          reset-access-rule
          audit-rule-factory
          remove-audit-rule-specific
          remove-access-rule?
          access-rule-factory
          set-audit-rule
          add-audit-rule
          access-right-type
          access-rule-type
          audit-rule-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.FileSystemSecurity a))
  (define (file-system-security? a)
    (clr-is System.Security.AccessControl.FileSystemSecurity a))
  (define-method-port
    add-access-rule
    System.Security.AccessControl.FileSystemSecurity
    AddAccessRule
    (System.Void System.Security.AccessControl.FileSystemAccessRule))
  (define-method-port
    set-access-rule
    System.Security.AccessControl.FileSystemSecurity
    SetAccessRule
    (System.Void System.Security.AccessControl.FileSystemAccessRule))
  (define-method-port
    remove-audit-rule-all
    System.Security.AccessControl.FileSystemSecurity
    RemoveAuditRuleAll
    (System.Void System.Security.AccessControl.FileSystemAuditRule))
  (define-method-port
    remove-audit-rule?
    System.Security.AccessControl.FileSystemSecurity
    RemoveAuditRule
    (System.Boolean System.Security.AccessControl.FileSystemAuditRule))
  (define-method-port
    remove-access-rule-all
    System.Security.AccessControl.FileSystemSecurity
    RemoveAccessRuleAll
    (System.Void System.Security.AccessControl.FileSystemAccessRule))
  (define-method-port
    remove-access-rule-specific
    System.Security.AccessControl.FileSystemSecurity
    RemoveAccessRuleSpecific
    (System.Void System.Security.AccessControl.FileSystemAccessRule))
  (define-method-port
    reset-access-rule
    System.Security.AccessControl.FileSystemSecurity
    ResetAccessRule
    (System.Void System.Security.AccessControl.FileSystemAccessRule))
  (define-method-port
    audit-rule-factory
    System.Security.AccessControl.FileSystemSecurity
    AuditRuleFactory
    (System.Security.AccessControl.AuditRule
      System.Security.Principal.IdentityReference
      System.Int32
      System.Boolean
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.AuditFlags))
  (define-method-port
    remove-audit-rule-specific
    System.Security.AccessControl.FileSystemSecurity
    RemoveAuditRuleSpecific
    (System.Void System.Security.AccessControl.FileSystemAuditRule))
  (define-method-port
    remove-access-rule?
    System.Security.AccessControl.FileSystemSecurity
    RemoveAccessRule
    (System.Boolean System.Security.AccessControl.FileSystemAccessRule))
  (define-method-port
    access-rule-factory
    System.Security.AccessControl.FileSystemSecurity
    AccessRuleFactory
    (System.Security.AccessControl.AccessRule
      System.Security.Principal.IdentityReference
      System.Int32
      System.Boolean
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.AccessControlType))
  (define-method-port
    set-audit-rule
    System.Security.AccessControl.FileSystemSecurity
    SetAuditRule
    (System.Void System.Security.AccessControl.FileSystemAuditRule))
  (define-method-port
    add-audit-rule
    System.Security.AccessControl.FileSystemSecurity
    AddAuditRule
    (System.Void System.Security.AccessControl.FileSystemAuditRule))
  (define-field-port
    access-right-type
    #f
    #f
    (property:)
    System.Security.AccessControl.FileSystemSecurity
    AccessRightType
    System.Type)
  (define-field-port
    access-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.FileSystemSecurity
    AccessRuleType
    System.Type)
  (define-field-port
    audit-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.FileSystemSecurity
    AuditRuleType
    System.Type))
