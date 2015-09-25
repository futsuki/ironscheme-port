(library (system security access-control crypto-key-security)
  (export new
          is?
          crypto-key-security?
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
             System.Security.AccessControl.CryptoKeySecurity
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.CryptoKeySecurity a))
  (define (crypto-key-security? a)
    (clr-is System.Security.AccessControl.CryptoKeySecurity a))
  (define-method-port
    add-access-rule
    System.Security.AccessControl.CryptoKeySecurity
    AddAccessRule
    (System.Void System.Security.AccessControl.CryptoKeyAccessRule))
  (define-method-port
    set-access-rule
    System.Security.AccessControl.CryptoKeySecurity
    SetAccessRule
    (System.Void System.Security.AccessControl.CryptoKeyAccessRule))
  (define-method-port
    remove-audit-rule-all
    System.Security.AccessControl.CryptoKeySecurity
    RemoveAuditRuleAll
    (System.Void System.Security.AccessControl.CryptoKeyAuditRule))
  (define-method-port
    remove-audit-rule?
    System.Security.AccessControl.CryptoKeySecurity
    RemoveAuditRule
    (System.Boolean System.Security.AccessControl.CryptoKeyAuditRule))
  (define-method-port
    remove-access-rule-all
    System.Security.AccessControl.CryptoKeySecurity
    RemoveAccessRuleAll
    (System.Void System.Security.AccessControl.CryptoKeyAccessRule))
  (define-method-port
    remove-access-rule-specific
    System.Security.AccessControl.CryptoKeySecurity
    RemoveAccessRuleSpecific
    (System.Void System.Security.AccessControl.CryptoKeyAccessRule))
  (define-method-port
    reset-access-rule
    System.Security.AccessControl.CryptoKeySecurity
    ResetAccessRule
    (System.Void System.Security.AccessControl.CryptoKeyAccessRule))
  (define-method-port
    audit-rule-factory
    System.Security.AccessControl.CryptoKeySecurity
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
    System.Security.AccessControl.CryptoKeySecurity
    RemoveAuditRuleSpecific
    (System.Void System.Security.AccessControl.CryptoKeyAuditRule))
  (define-method-port
    remove-access-rule?
    System.Security.AccessControl.CryptoKeySecurity
    RemoveAccessRule
    (System.Boolean System.Security.AccessControl.CryptoKeyAccessRule))
  (define-method-port
    access-rule-factory
    System.Security.AccessControl.CryptoKeySecurity
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
    System.Security.AccessControl.CryptoKeySecurity
    SetAuditRule
    (System.Void System.Security.AccessControl.CryptoKeyAuditRule))
  (define-method-port
    add-audit-rule
    System.Security.AccessControl.CryptoKeySecurity
    AddAuditRule
    (System.Void System.Security.AccessControl.CryptoKeyAuditRule))
  (define-field-port
    access-right-type
    #f
    #f
    (property:)
    System.Security.AccessControl.CryptoKeySecurity
    AccessRightType
    System.Type)
  (define-field-port
    access-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.CryptoKeySecurity
    AccessRuleType
    System.Type)
  (define-field-port
    audit-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.CryptoKeySecurity
    AuditRuleType
    System.Type))
