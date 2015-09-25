(library (system security access-control discretionary-acl)
  (export new
          is?
          discretionary-acl?
          add-access
          remove-access-specific
          set-access
          remove-access?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.DiscretionaryAcl
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.DiscretionaryAcl a))
  (define (discretionary-acl? a)
    (clr-is System.Security.AccessControl.DiscretionaryAcl a))
  (define-method-port
    add-access
    System.Security.AccessControl.DiscretionaryAcl
    AddAccess
    (System.Void
      System.Security.AccessControl.AccessControlType
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.ObjectAceFlags
      System.Guid
      System.Guid)
    (System.Void
      System.Security.AccessControl.AccessControlType
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags))
  (define-method-port
    remove-access-specific
    System.Security.AccessControl.DiscretionaryAcl
    RemoveAccessSpecific
    (System.Void
      System.Security.AccessControl.AccessControlType
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.ObjectAceFlags
      System.Guid
      System.Guid)
    (System.Void
      System.Security.AccessControl.AccessControlType
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags))
  (define-method-port
    set-access
    System.Security.AccessControl.DiscretionaryAcl
    SetAccess
    (System.Void
      System.Security.AccessControl.AccessControlType
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.ObjectAceFlags
      System.Guid
      System.Guid)
    (System.Void
      System.Security.AccessControl.AccessControlType
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags))
  (define-method-port
    remove-access?
    System.Security.AccessControl.DiscretionaryAcl
    RemoveAccess
    (System.Boolean
      System.Security.AccessControl.AccessControlType
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags
      System.Security.AccessControl.ObjectAceFlags
      System.Guid
      System.Guid)
    (System.Boolean
      System.Security.AccessControl.AccessControlType
      System.Security.Principal.SecurityIdentifier
      System.Int32
      System.Security.AccessControl.InheritanceFlags
      System.Security.AccessControl.PropagationFlags)))
