(library (system security access-control custom-ace)
  (export new
          is?
          custom-ace?
          get-binary-form
          get-opaque
          set-opaque
          max-opaque-length
          binary-length
          opaque-length)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.AccessControl.CustomAce a ...)))))
  (define (is? a) (clr-is System.Security.AccessControl.CustomAce a))
  (define (custom-ace? a)
    (clr-is System.Security.AccessControl.CustomAce a))
  (define-method-port
    get-binary-form
    System.Security.AccessControl.CustomAce
    GetBinaryForm
    (System.Void System.Byte[] System.Int32))
  (define-method-port
    get-opaque
    System.Security.AccessControl.CustomAce
    GetOpaque
    (System.Byte[]))
  (define-method-port
    set-opaque
    System.Security.AccessControl.CustomAce
    SetOpaque
    (System.Void System.Byte[]))
  (define-field-port
    max-opaque-length
    #f
    #f
    (static:)
    System.Security.AccessControl.CustomAce
    MaxOpaqueLength
    System.Int32)
  (define-field-port
    binary-length
    #f
    #f
    (property:)
    System.Security.AccessControl.CustomAce
    BinaryLength
    System.Int32)
  (define-field-port
    opaque-length
    #f
    #f
    (property:)
    System.Security.AccessControl.CustomAce
    OpaqueLength
    System.Int32))
