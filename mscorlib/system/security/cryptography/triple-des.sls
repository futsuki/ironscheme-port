(library (system security cryptography triple-des)
  (export is?
          triple-des?
          create
          is-weak-key?
          key-get
          key-set!
          key-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.TripleDES a))
  (define (triple-des? a)
    (clr-is System.Security.Cryptography.TripleDES a))
  (define-method-port
    create
    System.Security.Cryptography.TripleDES
    Create
    (static: System.Security.Cryptography.TripleDES System.String)
    (static: System.Security.Cryptography.TripleDES))
  (define-method-port
    is-weak-key?
    System.Security.Cryptography.TripleDES
    IsWeakKey
    (static: System.Boolean System.Byte[]))
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    System.Security.Cryptography.TripleDES
    Key
    System.Byte[]))
