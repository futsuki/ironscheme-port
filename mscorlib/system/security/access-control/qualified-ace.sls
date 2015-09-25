(library (system security access-control qualified-ace)
  (export is?
          qualified-ace?
          get-opaque
          set-opaque
          ace-qualifier
          is-callback?
          opaque-length)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.AccessControl.QualifiedAce a))
  (define (qualified-ace? a)
    (clr-is System.Security.AccessControl.QualifiedAce a))
  (define-method-port
    get-opaque
    System.Security.AccessControl.QualifiedAce
    GetOpaque
    (System.Byte[]))
  (define-method-port
    set-opaque
    System.Security.AccessControl.QualifiedAce
    SetOpaque
    (System.Void System.Byte[]))
  (define-field-port
    ace-qualifier
    #f
    #f
    (property:)
    System.Security.AccessControl.QualifiedAce
    AceQualifier
    System.Security.AccessControl.AceQualifier)
  (define-field-port
    is-callback?
    #f
    #f
    (property:)
    System.Security.AccessControl.QualifiedAce
    IsCallback
    System.Boolean)
  (define-field-port
    opaque-length
    #f
    #f
    (property:)
    System.Security.AccessControl.QualifiedAce
    OpaqueLength
    System.Int32))
