(library (system security access-control object-security)
  (export is?
          object-security?
          get-security-descriptor-sddl-form
          purge-audit-rules
          purge-access-rules
          is-sddl-conversion-supported?
          set-audit-rule-protection
          set-access-rule-protection
          modify-access-rule?
          set-group
          get-group
          modify-audit-rule?
          set-security-descriptor-binary-form
          audit-rule-factory
          set-security-descriptor-sddl-form
          set-owner
          get-owner
          access-rule-factory
          get-security-descriptor-binary-form
          access-right-type
          access-rule-type
          audit-rule-type
          are-access-rules-canonical?
          are-access-rules-protected?
          are-audit-rules-canonical?
          are-audit-rules-protected?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.ObjectSecurity a))
  (define (object-security? a)
    (clr-is System.Security.AccessControl.ObjectSecurity a))
  (define-method-port
    get-security-descriptor-sddl-form
    System.Security.AccessControl.ObjectSecurity
    GetSecurityDescriptorSddlForm
    (System.String System.Security.AccessControl.AccessControlSections))
  (define-method-port
    purge-audit-rules
    System.Security.AccessControl.ObjectSecurity
    PurgeAuditRules
    (System.Void System.Security.Principal.IdentityReference))
  (define-method-port
    purge-access-rules
    System.Security.AccessControl.ObjectSecurity
    PurgeAccessRules
    (System.Void System.Security.Principal.IdentityReference))
  (define-method-port
    is-sddl-conversion-supported?
    System.Security.AccessControl.ObjectSecurity
    IsSddlConversionSupported
    (static: System.Boolean))
  (define-method-port
    set-audit-rule-protection
    System.Security.AccessControl.ObjectSecurity
    SetAuditRuleProtection
    (System.Void System.Boolean System.Boolean))
  (define-method-port
    set-access-rule-protection
    System.Security.AccessControl.ObjectSecurity
    SetAccessRuleProtection
    (System.Void System.Boolean System.Boolean))
  (define-method-port
    modify-access-rule?
    System.Security.AccessControl.ObjectSecurity
    ModifyAccessRule
    (System.Boolean
      System.Security.AccessControl.AccessControlModification
      System.Security.AccessControl.AccessRule
      System.Boolean&))
  (define-method-port
    set-group
    System.Security.AccessControl.ObjectSecurity
    SetGroup
    (System.Void System.Security.Principal.IdentityReference))
  (define-method-port
    get-group
    System.Security.AccessControl.ObjectSecurity
    GetGroup
    (System.Security.Principal.IdentityReference System.Type))
  (define-method-port
    modify-audit-rule?
    System.Security.AccessControl.ObjectSecurity
    ModifyAuditRule
    (System.Boolean
      System.Security.AccessControl.AccessControlModification
      System.Security.AccessControl.AuditRule
      System.Boolean&))
  (define-method-port
    set-security-descriptor-binary-form
    System.Security.AccessControl.ObjectSecurity
    SetSecurityDescriptorBinaryForm
    (System.Void
      System.Byte[]
      System.Security.AccessControl.AccessControlSections)
    (System.Void System.Byte[]))
  (define-method-port
    audit-rule-factory
    System.Security.AccessControl.ObjectSecurity
    AuditRuleFactory
    (System.Security.AccessControl.AuditRule
      System.Security.Principal.IdentityReference
      System.Int32
      System.Boolean
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.AuditFlags))
  (define-method-port
    set-security-descriptor-sddl-form
    System.Security.AccessControl.ObjectSecurity
    SetSecurityDescriptorSddlForm
    (System.Void
      System.String
      System.Security.AccessControl.AccessControlSections)
    (System.Void System.String))
  (define-method-port
    set-owner
    System.Security.AccessControl.ObjectSecurity
    SetOwner
    (System.Void System.Security.Principal.IdentityReference))
  (define-method-port
    get-owner
    System.Security.AccessControl.ObjectSecurity
    GetOwner
    (System.Security.Principal.IdentityReference System.Type))
  (define-method-port
    access-rule-factory
    System.Security.AccessControl.ObjectSecurity
    AccessRuleFactory
    (System.Security.AccessControl.AccessRule
      System.Security.Principal.IdentityReference
      System.Int32
      System.Boolean
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.AccessControlType))
  (define-method-port
    get-security-descriptor-binary-form
    System.Security.AccessControl.ObjectSecurity
    GetSecurityDescriptorBinaryForm
    (System.Byte[]))
  (define-field-port
    access-right-type
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectSecurity
    AccessRightType
    System.Type)
  (define-field-port
    access-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectSecurity
    AccessRuleType
    System.Type)
  (define-field-port
    audit-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectSecurity
    AuditRuleType
    System.Type)
  (define-field-port
    are-access-rules-canonical?
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectSecurity
    AreAccessRulesCanonical
    System.Boolean)
  (define-field-port
    are-access-rules-protected?
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectSecurity
    AreAccessRulesProtected
    System.Boolean)
  (define-field-port
    are-audit-rules-canonical?
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectSecurity
    AreAuditRulesCanonical
    System.Boolean)
  (define-field-port
    are-audit-rules-protected?
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectSecurity
    AreAuditRulesProtected
    System.Boolean))
