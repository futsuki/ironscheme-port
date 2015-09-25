(library (system security access-control generic-security-descriptor)
  (export is?
          generic-security-descriptor?
          is-sddl-conversion-supported?
          get-binary-form
          get-sddl-form
          binary-length
          control-flags
          group-get
          group-set!
          group-update!
          owner-get
          owner-set!
          owner-update!
          revision)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.GenericSecurityDescriptor a))
  (define (generic-security-descriptor? a)
    (clr-is System.Security.AccessControl.GenericSecurityDescriptor a))
  (define-method-port
    is-sddl-conversion-supported?
    System.Security.AccessControl.GenericSecurityDescriptor
    IsSddlConversionSupported
    (static: System.Boolean))
  (define-method-port
    get-binary-form
    System.Security.AccessControl.GenericSecurityDescriptor
    GetBinaryForm
    (System.Void System.Byte[] System.Int32))
  (define-method-port
    get-sddl-form
    System.Security.AccessControl.GenericSecurityDescriptor
    GetSddlForm
    (System.String System.Security.AccessControl.AccessControlSections))
  (define-field-port
    binary-length
    #f
    #f
    (property:)
    System.Security.AccessControl.GenericSecurityDescriptor
    BinaryLength
    System.Int32)
  (define-field-port
    control-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.GenericSecurityDescriptor
    ControlFlags
    System.Security.AccessControl.ControlFlags)
  (define-field-port
    group-get
    group-set!
    group-update!
    (property:)
    System.Security.AccessControl.GenericSecurityDescriptor
    Group
    System.Security.Principal.SecurityIdentifier)
  (define-field-port
    owner-get
    owner-set!
    owner-update!
    (property:)
    System.Security.AccessControl.GenericSecurityDescriptor
    Owner
    System.Security.Principal.SecurityIdentifier)
  (define-field-port
    revision
    #f
    #f
    (static: property:)
    System.Security.AccessControl.GenericSecurityDescriptor
    Revision
    System.Byte))
