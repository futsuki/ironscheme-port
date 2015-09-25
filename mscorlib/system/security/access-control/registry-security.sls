(library (system security access-control registry-security)
  (export new
          is?
          registry-security?
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
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.RegistrySecurity
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.RegistrySecurity a))
  (define (registry-security? a)
    (clr-is System.Security.AccessControl.RegistrySecurity a))
  (define-method-port
    add-access-rule
    System.Security.AccessControl.RegistrySecurity
    AddAccessRule
    (System.Void System.Security.AccessControl.RegistryAccessRule))
  (define-method-port
    set-access-rule
    System.Security.AccessControl.RegistrySecurity
    SetAccessRule
    (System.Void System.Security.AccessControl.RegistryAccessRule))
  (define-method-port
    remove-audit-rule-all
    System.Security.AccessControl.RegistrySecurity
    RemoveAuditRuleAll
    (System.Void System.Security.AccessControl.RegistryAuditRule))
  (define-method-port
    remove-audit-rule?
    System.Security.AccessControl.RegistrySecurity
    RemoveAuditRule
    (System.Boolean System.Security.AccessControl.RegistryAuditRule))
  (define-method-port
    remove-access-rule-all
    System.Security.AccessControl.RegistrySecurity
    RemoveAccessRuleAll
    (System.Void System.Security.AccessControl.RegistryAccessRule))
  (define-method-port
    remove-access-rule-specific
    System.Security.AccessControl.RegistrySecurity
    RemoveAccessRuleSpecific
    (System.Void System.Security.AccessControl.RegistryAccessRule))
  (define-method-port
    reset-access-rule
    System.Security.AccessControl.RegistrySecurity
    ResetAccessRule
    (System.Void System.Security.AccessControl.RegistryAccessRule))
  (define-method-port
    audit-rule-factory
    System.Security.AccessControl.RegistrySecurity
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
    System.Security.AccessControl.RegistrySecurity
    RemoveAuditRuleSpecific
    (System.Void System.Security.AccessControl.RegistryAuditRule))
  (define-method-port
    remove-access-rule?
    System.Security.AccessControl.RegistrySecurity
    RemoveAccessRule
    (System.Boolean System.Security.AccessControl.RegistryAccessRule))
  (define-method-port
    access-rule-factory
    System.Security.AccessControl.RegistrySecurity
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
    System.Security.AccessControl.RegistrySecurity
    SetAuditRule
    (System.Void System.Security.AccessControl.RegistryAuditRule))
  (define-method-port
    add-audit-rule
    System.Security.AccessControl.RegistrySecurity
    AddAuditRule
    (System.Void System.Security.AccessControl.RegistryAuditRule))
  (define-field-port
    access-right-type
    #f
    #f
    (property:)
    System.Security.AccessControl.RegistrySecurity
    AccessRightType
    System.Type)
  (define-field-port
    access-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.RegistrySecurity
    AccessRuleType
    System.Type)
  (define-field-port
    audit-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.RegistrySecurity
    AuditRuleType
    System.Type))
