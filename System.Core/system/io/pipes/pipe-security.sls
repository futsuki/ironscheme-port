(library (system io pipes pipe-security)
  (export new
          is?
          pipe-security?
          add-access-rule
          set-access-rule
          remove-audit-rule-all
          remove-audit-rule?
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
        ((_ a ...) #'(clr-new System.IO.Pipes.PipeSecurity a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.PipeSecurity a))
  (define (pipe-security? a) (clr-is System.IO.Pipes.PipeSecurity a))
  (define-method-port
    add-access-rule
    System.IO.Pipes.PipeSecurity
    AddAccessRule
    (System.Void System.IO.Pipes.PipeAccessRule))
  (define-method-port
    set-access-rule
    System.IO.Pipes.PipeSecurity
    SetAccessRule
    (System.Void System.IO.Pipes.PipeAccessRule))
  (define-method-port
    remove-audit-rule-all
    System.IO.Pipes.PipeSecurity
    RemoveAuditRuleAll
    (System.Void System.IO.Pipes.PipeAuditRule))
  (define-method-port
    remove-audit-rule?
    System.IO.Pipes.PipeSecurity
    RemoveAuditRule
    (System.Boolean System.IO.Pipes.PipeAuditRule))
  (define-method-port
    remove-access-rule-specific
    System.IO.Pipes.PipeSecurity
    RemoveAccessRuleSpecific
    (System.Void System.IO.Pipes.PipeAccessRule))
  (define-method-port
    reset-access-rule
    System.IO.Pipes.PipeSecurity
    ResetAccessRule
    (System.Void System.IO.Pipes.PipeAccessRule))
  (define-method-port
    audit-rule-factory
    System.IO.Pipes.PipeSecurity
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
    System.IO.Pipes.PipeSecurity
    RemoveAuditRuleSpecific
    (System.Void System.IO.Pipes.PipeAuditRule))
  (define-method-port
    remove-access-rule?
    System.IO.Pipes.PipeSecurity
    RemoveAccessRule
    (System.Boolean System.IO.Pipes.PipeAccessRule))
  (define-method-port
    access-rule-factory
    System.IO.Pipes.PipeSecurity
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
    System.IO.Pipes.PipeSecurity
    SetAuditRule
    (System.Void System.IO.Pipes.PipeAuditRule))
  (define-method-port
    add-audit-rule
    System.IO.Pipes.PipeSecurity
    AddAuditRule
    (System.Void System.IO.Pipes.PipeAuditRule))
  (define-field-port
    access-right-type
    #f
    #f
    (property:)
    System.IO.Pipes.PipeSecurity
    AccessRightType
    System.Type)
  (define-field-port
    access-rule-type
    #f
    #f
    (property:)
    System.IO.Pipes.PipeSecurity
    AccessRuleType
    System.Type)
  (define-field-port
    audit-rule-type
    #f
    #f
    (property:)
    System.IO.Pipes.PipeSecurity
    AuditRuleType
    System.Type))
