(library (system security access-control raw-security-descriptor)
  (export new
          is?
          raw-security-descriptor?
          set-flags
          control-flags
          discretionary-acl-get
          discretionary-acl-set!
          discretionary-acl-update!
          group-get
          group-set!
          group-update!
          owner-get
          owner-set!
          owner-update!
          resource-manager-control-get
          resource-manager-control-set!
          resource-manager-control-update!
          system-acl-get
          system-acl-set!
          system-acl-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.RawSecurityDescriptor
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.RawSecurityDescriptor a))
  (define (raw-security-descriptor? a)
    (clr-is System.Security.AccessControl.RawSecurityDescriptor a))
  (define-method-port
    set-flags
    System.Security.AccessControl.RawSecurityDescriptor
    SetFlags
    (System.Void System.Security.AccessControl.ControlFlags))
  (define-field-port
    control-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.RawSecurityDescriptor
    ControlFlags
    System.Security.AccessControl.ControlFlags)
  (define-field-port
    discretionary-acl-get
    discretionary-acl-set!
    discretionary-acl-update!
    (property:)
    System.Security.AccessControl.RawSecurityDescriptor
    DiscretionaryAcl
    System.Security.AccessControl.RawAcl)
  (define-field-port
    group-get
    group-set!
    group-update!
    (property:)
    System.Security.AccessControl.RawSecurityDescriptor
    Group
    System.Security.Principal.SecurityIdentifier)
  (define-field-port
    owner-get
    owner-set!
    owner-update!
    (property:)
    System.Security.AccessControl.RawSecurityDescriptor
    Owner
    System.Security.Principal.SecurityIdentifier)
  (define-field-port
    resource-manager-control-get
    resource-manager-control-set!
    resource-manager-control-update!
    (property:)
    System.Security.AccessControl.RawSecurityDescriptor
    ResourceManagerControl
    System.Byte)
  (define-field-port
    system-acl-get
    system-acl-set!
    system-acl-update!
    (property:)
    System.Security.AccessControl.RawSecurityDescriptor
    SystemAcl
    System.Security.AccessControl.RawAcl))
