(library (system security access-control common-security-descriptor)
  (export new
          is?
          common-security-descriptor?
          set-system-acl-protection
          purge-audit
          set-discretionary-acl-protection
          purge-access-control
          control-flags
          discretionary-acl-get
          discretionary-acl-set!
          discretionary-acl-update!
          group-get
          group-set!
          group-update!
          is-container?
          is-discretionary-acl-canonical?
          is-ds?
          is-system-acl-canonical?
          owner-get
          owner-set!
          owner-update!
          system-acl-get
          system-acl-set!
          system-acl-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.CommonSecurityDescriptor
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.CommonSecurityDescriptor a))
  (define (common-security-descriptor? a)
    (clr-is System.Security.AccessControl.CommonSecurityDescriptor a))
  (define-method-port
    set-system-acl-protection
    System.Security.AccessControl.CommonSecurityDescriptor
    SetSystemAclProtection
    (System.Void System.Boolean System.Boolean))
  (define-method-port
    purge-audit
    System.Security.AccessControl.CommonSecurityDescriptor
    PurgeAudit
    (System.Void System.Security.Principal.SecurityIdentifier))
  (define-method-port
    set-discretionary-acl-protection
    System.Security.AccessControl.CommonSecurityDescriptor
    SetDiscretionaryAclProtection
    (System.Void System.Boolean System.Boolean))
  (define-method-port
    purge-access-control
    System.Security.AccessControl.CommonSecurityDescriptor
    PurgeAccessControl
    (System.Void System.Security.Principal.SecurityIdentifier))
  (define-field-port
    control-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    ControlFlags
    System.Security.AccessControl.ControlFlags)
  (define-field-port
    discretionary-acl-get
    discretionary-acl-set!
    discretionary-acl-update!
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    DiscretionaryAcl
    System.Security.AccessControl.DiscretionaryAcl)
  (define-field-port
    group-get
    group-set!
    group-update!
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    Group
    System.Security.Principal.SecurityIdentifier)
  (define-field-port
    is-container?
    #f
    #f
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    IsContainer
    System.Boolean)
  (define-field-port
    is-discretionary-acl-canonical?
    #f
    #f
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    IsDiscretionaryAclCanonical
    System.Boolean)
  (define-field-port
    is-ds?
    #f
    #f
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    IsDS
    System.Boolean)
  (define-field-port
    is-system-acl-canonical?
    #f
    #f
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    IsSystemAclCanonical
    System.Boolean)
  (define-field-port
    owner-get
    owner-set!
    owner-update!
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    Owner
    System.Security.Principal.SecurityIdentifier)
  (define-field-port
    system-acl-get
    system-acl-set!
    system-acl-update!
    (property:)
    System.Security.AccessControl.CommonSecurityDescriptor
    SystemAcl
    System.Security.AccessControl.SystemAcl))
