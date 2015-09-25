(library (system security access-control compound-ace)
  (export new
          is?
          compound-ace?
          get-binary-form
          binary-length
          compound-ace-type-get
          compound-ace-type-set!
          compound-ace-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.AccessControl.CompoundAce a ...)))))
  (define (is? a) (clr-is System.Security.AccessControl.CompoundAce a))
  (define (compound-ace? a)
    (clr-is System.Security.AccessControl.CompoundAce a))
  (define-method-port
    get-binary-form
    System.Security.AccessControl.CompoundAce
    GetBinaryForm
    (System.Void System.Byte[] System.Int32))
  (define-field-port
    binary-length
    #f
    #f
    (property:)
    System.Security.AccessControl.CompoundAce
    BinaryLength
    System.Int32)
  (define-field-port
    compound-ace-type-get
    compound-ace-type-set!
    compound-ace-type-update!
    (property:)
    System.Security.AccessControl.CompoundAce
    CompoundAceType
    System.Security.AccessControl.CompoundAceType))
