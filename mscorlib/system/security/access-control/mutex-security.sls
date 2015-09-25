(library (system security access-control mutex-security)
  (export new
          is?
          mutex-security?
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
             System.Security.AccessControl.MutexSecurity
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.MutexSecurity a))
  (define (mutex-security? a)
    (clr-is System.Security.AccessControl.MutexSecurity a))
  (define-method-port
    add-access-rule
    System.Security.AccessControl.MutexSecurity
    AddAccessRule
    (System.Void System.Security.AccessControl.MutexAccessRule))
  (define-method-port
    set-access-rule
    System.Security.AccessControl.MutexSecurity
    SetAccessRule
    (System.Void System.Security.AccessControl.MutexAccessRule))
  (define-method-port
    remove-audit-rule-all
    System.Security.AccessControl.MutexSecurity
    RemoveAuditRuleAll
    (System.Void System.Security.AccessControl.MutexAuditRule))
  (define-method-port
    remove-audit-rule?
    System.Security.AccessControl.MutexSecurity
    RemoveAuditRule
    (System.Boolean System.Security.AccessControl.MutexAuditRule))
  (define-method-port
    remove-access-rule-all
    System.Security.AccessControl.MutexSecurity
    RemoveAccessRuleAll
    (System.Void System.Security.AccessControl.MutexAccessRule))
  (define-method-port
    remove-access-rule-specific
    System.Security.AccessControl.MutexSecurity
    RemoveAccessRuleSpecific
    (System.Void System.Security.AccessControl.MutexAccessRule))
  (define-method-port
    reset-access-rule
    System.Security.AccessControl.MutexSecurity
    ResetAccessRule
    (System.Void System.Security.AccessControl.MutexAccessRule))
  (define-method-port
    audit-rule-factory
    System.Security.AccessControl.MutexSecurity
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
    System.Security.AccessControl.MutexSecurity
    RemoveAuditRuleSpecific
    (System.Void System.Security.AccessControl.MutexAuditRule))
  (define-method-port
    remove-access-rule?
    System.Security.AccessControl.MutexSecurity
    RemoveAccessRule
    (System.Boolean System.Security.AccessControl.MutexAccessRule))
  (define-method-port
    access-rule-factory
    System.Security.AccessControl.MutexSecurity
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
    System.Security.AccessControl.MutexSecurity
    SetAuditRule
    (System.Void System.Security.AccessControl.MutexAuditRule))
  (define-method-port
    add-audit-rule
    System.Security.AccessControl.MutexSecurity
    AddAuditRule
    (System.Void System.Security.AccessControl.MutexAuditRule))
  (define-field-port
    access-right-type
    #f
    #f
    (property:)
    System.Security.AccessControl.MutexSecurity
    AccessRightType
    System.Type)
  (define-field-port
    access-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.MutexSecurity
    AccessRuleType
    System.Type)
  (define-field-port
    audit-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.MutexSecurity
    AuditRuleType
    System.Type))
