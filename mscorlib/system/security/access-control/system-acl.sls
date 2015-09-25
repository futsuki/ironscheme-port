(library (system security access-control system-acl)
  (export new
          is?
          system-acl?
          add-audit
          remove-audit?
          remove-audit-specific
          set-audit)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.AccessControl.SystemAcl a ...)))))
  (define (is? a) (clr-is System.Security.AccessControl.SystemAcl a))
  (define (system-acl? a)
    (clr-is System.Security.AccessControl.SystemAcl a))
  (define-method-port
    add-audit
    System.Security.AccessControl.SystemAcl
    AddAudit
    (System.Void
      System.Security.AccessControl.AuditFlags
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.ObjectAceFlags
      System.Guid
      System.Guid)
    (System.Void
      System.Security.AccessControl.AuditFlags
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags))
  (define-method-port
    remove-audit?
    System.Security.AccessControl.SystemAcl
    RemoveAudit
    (System.Boolean
      System.Security.AccessControl.AuditFlags
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.ObjectAceFlags
      System.Guid
      System.Guid)
    (System.Boolean
      System.Security.AccessControl.AuditFlags
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags))
  (define-method-port
    remove-audit-specific
    System.Security.AccessControl.SystemAcl
    RemoveAuditSpecific
    (System.Void
      System.Security.AccessControl.AuditFlags
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.ObjectAceFlags
      System.Guid
      System.Guid)
    (System.Void
      System.Security.AccessControl.AuditFlags
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags))
  (define-method-port
    set-audit
    System.Security.AccessControl.SystemAcl
    SetAudit
    (System.Void
      System.Security.AccessControl.AuditFlags
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.ObjectAceFlags
      System.Guid
      System.Guid)
    (System.Void
      System.Security.AccessControl.AuditFlags
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags)))
