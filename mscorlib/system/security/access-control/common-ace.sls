(library (system security access-control common-ace)
  (export new
          is?
          common-ace?
          get-binary-form
          max-opaque-length
          binary-length)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.AccessControl.CommonAce a ...)))))
  (define (is? a) (clr-is System.Security.AccessControl.CommonAce a))
  (define (common-ace? a)
    (clr-is System.Security.AccessControl.CommonAce a))
  (define-method-port
    get-binary-form
    System.Security.AccessControl.CommonAce
    GetBinaryForm
    (System.Void System.Byte[] System.Int32))
  (define-method-port
    max-opaque-length
    System.Security.AccessControl.CommonAce
    MaxOpaqueLength
    (static: System.Int32 System.Boolean))
  (define-field-port
    binary-length
    #f
    #f
    (property:)
    System.Security.AccessControl.CommonAce
    BinaryLength
    System.Int32))
