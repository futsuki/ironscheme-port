(library (system security access-control semaphore-security)
  (export new
          is?
          semaphore-security?
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
             System.Security.AccessControl.SemaphoreSecurity
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.SemaphoreSecurity a))
  (define (semaphore-security? a)
    (clr-is System.Security.AccessControl.SemaphoreSecurity a))
  (define-method-port
    add-access-rule
    System.Security.AccessControl.SemaphoreSecurity
    AddAccessRule
    (System.Void System.Security.AccessControl.SemaphoreAccessRule))
  (define-method-port
    set-access-rule
    System.Security.AccessControl.SemaphoreSecurity
    SetAccessRule
    (System.Void System.Security.AccessControl.SemaphoreAccessRule))
  (define-method-port
    remove-audit-rule-all
    System.Security.AccessControl.SemaphoreSecurity
    RemoveAuditRuleAll
    (System.Void System.Security.AccessControl.SemaphoreAuditRule))
  (define-method-port
    remove-audit-rule?
    System.Security.AccessControl.SemaphoreSecurity
    RemoveAuditRule
    (System.Boolean System.Security.AccessControl.SemaphoreAuditRule))
  (define-method-port
    remove-access-rule-all
    System.Security.AccessControl.SemaphoreSecurity
    RemoveAccessRuleAll
    (System.Void System.Security.AccessControl.SemaphoreAccessRule))
  (define-method-port
    remove-access-rule-specific
    System.Security.AccessControl.SemaphoreSecurity
    RemoveAccessRuleSpecific
    (System.Void System.Security.AccessControl.SemaphoreAccessRule))
  (define-method-port
    reset-access-rule
    System.Security.AccessControl.SemaphoreSecurity
    ResetAccessRule
    (System.Void System.Security.AccessControl.SemaphoreAccessRule))
  (define-method-port
    audit-rule-factory
    System.Security.AccessControl.SemaphoreSecurity
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
    System.Security.AccessControl.SemaphoreSecurity
    RemoveAuditRuleSpecific
    (System.Void System.Security.AccessControl.SemaphoreAuditRule))
  (define-method-port
    remove-access-rule?
    System.Security.AccessControl.SemaphoreSecurity
    RemoveAccessRule
    (System.Boolean System.Security.AccessControl.SemaphoreAccessRule))
  (define-method-port
    access-rule-factory
    System.Security.AccessControl.SemaphoreSecurity
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
    System.Security.AccessControl.SemaphoreSecurity
    SetAuditRule
    (System.Void System.Security.AccessControl.SemaphoreAuditRule))
  (define-method-port
    add-audit-rule
    System.Security.AccessControl.SemaphoreSecurity
    AddAuditRule
    (System.Void System.Security.AccessControl.SemaphoreAuditRule))
  (define-field-port
    access-right-type
    #f
    #f
    (property:)
    System.Security.AccessControl.SemaphoreSecurity
    AccessRightType
    System.Type)
  (define-field-port
    access-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.SemaphoreSecurity
    AccessRuleType
    System.Type)
  (define-field-port
    audit-rule-type
    #f
    #f
    (property:)
    System.Security.AccessControl.SemaphoreSecurity
    AuditRuleType
    System.Type))
