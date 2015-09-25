(library (system security cryptography des)
  (export is?
          des?
          create
          is-weak-key?
          is-semi-weak-key?
          key-get
          key-set!
          key-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.DES a))
  (define (des? a) (clr-is System.Security.Cryptography.DES a))
  (define-method-port
    create
    System.Security.Cryptography.DES
    Create
    (static: System.Security.Cryptography.DES System.String)
    (static: System.Security.Cryptography.DES))
  (define-method-port
    is-weak-key?
    System.Security.Cryptography.DES
    IsWeakKey
    (static: System.Boolean System.Byte[]))
  (define-method-port
    is-semi-weak-key?
    System.Security.Cryptography.DES
    IsSemiWeakKey
    (static: System.Boolean System.Byte[]))
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    System.Security.Cryptography.DES
    Key
    System.Byte[]))
