(library (system security access-control object-ace)
  (export new
          is?
          object-ace?
          get-binary-form
          max-opaque-length
          binary-length
          inherited-object-ace-type-get
          inherited-object-ace-type-set!
          inherited-object-ace-type-update!
          object-ace-flags-get
          object-ace-flags-set!
          object-ace-flags-update!
          object-ace-type-get
          object-ace-type-set!
          object-ace-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.AccessControl.ObjectAce a ...)))))
  (define (is? a) (clr-is System.Security.AccessControl.ObjectAce a))
  (define (object-ace? a)
    (clr-is System.Security.AccessControl.ObjectAce a))
  (define-method-port
    get-binary-form
    System.Security.AccessControl.ObjectAce
    GetBinaryForm
    (System.Void System.Byte[] System.Int32))
  (define-method-port
    max-opaque-length
    System.Security.AccessControl.ObjectAce
    MaxOpaqueLength
    (static: System.Int32 System.Boolean))
  (define-field-port
    binary-length
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectAce
    BinaryLength
    System.Int32)
  (define-field-port
    inherited-object-ace-type-get
    inherited-object-ace-type-set!
    inherited-object-ace-type-update!
    (property:)
    System.Security.AccessControl.ObjectAce
    InheritedObjectAceType
    System.Guid)
  (define-field-port
    object-ace-flags-get
    object-ace-flags-set!
    object-ace-flags-update!
    (property:)
    System.Security.AccessControl.ObjectAce
    ObjectAceFlags
    System.Security.AccessControl.ObjectAceFlags)
  (define-field-port
    object-ace-type-get
    object-ace-type-set!
    object-ace-type-update!
    (property:)
    System.Security.AccessControl.ObjectAce
    ObjectAceType
    System.Guid))
