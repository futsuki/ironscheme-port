(library (system security access-control generic-ace)
  (export is?
          generic-ace?
          get-hash-code
          create-from-binary-form
          get-binary-form
          copy
          equals?
          ace-flags-get
          ace-flags-set!
          ace-flags-update!
          ace-type
          audit-flags
          binary-length
          inheritance-flags
          is-inherited?
          propagation-flags)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.AccessControl.GenericAce a))
  (define (generic-ace? a)
    (clr-is System.Security.AccessControl.GenericAce a))
  (define-method-port
    get-hash-code
    System.Security.AccessControl.GenericAce
    GetHashCode
    (System.Int32))
  (define-method-port
    create-from-binary-form
    System.Security.AccessControl.GenericAce
    CreateFromBinaryForm
    (static:
      System.Security.AccessControl.GenericAce
      System.Byte[]
      System.Int32))
  (define-method-port
    get-binary-form
    System.Security.AccessControl.GenericAce
    GetBinaryForm
    (System.Void System.Byte[] System.Int32))
  (define-method-port
    copy
    System.Security.AccessControl.GenericAce
    Copy
    (System.Security.AccessControl.GenericAce))
  (define-method-port
    equals?
    System.Security.AccessControl.GenericAce
    Equals
    (System.Boolean System.Object))
  (define-field-port
    ace-flags-get
    ace-flags-set!
    ace-flags-update!
    (property:)
    System.Security.AccessControl.GenericAce
    AceFlags
    System.Security.AccessControl.AceFlags)
  (define-field-port
    ace-type
    #f
    #f
    (property:)
    System.Security.AccessControl.GenericAce
    AceType
    System.Security.AccessControl.AceType)
  (define-field-port
    audit-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.GenericAce
    AuditFlags
    System.Security.AccessControl.AuditFlags)
  (define-field-port
    binary-length
    #f
    #f
    (property:)
    System.Security.AccessControl.GenericAce
    BinaryLength
    System.Int32)
  (define-field-port
    inheritance-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.GenericAce
    InheritanceFlags
    System.Security.AccessControl.InheritanceFlags)
  (define-field-port
    is-inherited?
    #f
    #f
    (property:)
    System.Security.AccessControl.GenericAce
    IsInherited
    System.Boolean)
  (define-field-port
    propagation-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.GenericAce
    PropagationFlags
    System.Security.AccessControl.PropagationFlags))