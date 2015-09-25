(library (system security access-control raw-acl)
  (export new
          is?
          raw-acl?
          get-binary-form
          insert-ace
          remove-ace
          binary-length
          count
          item-get
          item-set!
          item-update!
          revision)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.AccessControl.RawAcl a ...)))))
  (define (is? a) (clr-is System.Security.AccessControl.RawAcl a))
  (define (raw-acl? a) (clr-is System.Security.AccessControl.RawAcl a))
  (define-method-port
    get-binary-form
    System.Security.AccessControl.RawAcl
    GetBinaryForm
    (System.Void System.Byte[] System.Int32))
  (define-method-port
    insert-ace
    System.Security.AccessControl.RawAcl
    InsertAce
    (System.Void System.Int32 System.Security.AccessControl.GenericAce))
  (define-method-port
    remove-ace
    System.Security.AccessControl.RawAcl
    RemoveAce
    (System.Void System.Int32))
  (define-field-port
    binary-length
    #f
    #f
    (property:)
    System.Security.AccessControl.RawAcl
    BinaryLength
    System.Int32)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Security.AccessControl.RawAcl
    Count
    System.Int32)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Security.AccessControl.RawAcl
    Item
    System.Security.AccessControl.GenericAce)
  (define-field-port
    revision
    #f
    #f
    (property:)
    System.Security.AccessControl.RawAcl
    Revision
    System.Byte))
