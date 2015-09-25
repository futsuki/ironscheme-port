(library (system security cryptography rc2)
  (export is?
          rc2?
          create
          effective-key-size-get
          effective-key-size-set!
          effective-key-size-update!
          key-size-get
          key-size-set!
          key-size-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.RC2 a))
  (define (rc2? a) (clr-is System.Security.Cryptography.RC2 a))
  (define-method-port
    create
    System.Security.Cryptography.RC2
    Create
    (static: System.Security.Cryptography.RC2 System.String)
    (static: System.Security.Cryptography.RC2))
  (define-field-port
    effective-key-size-get
    effective-key-size-set!
    effective-key-size-update!
    (property:)
    System.Security.Cryptography.RC2
    EffectiveKeySize
    System.Int32)
  (define-field-port
    key-size-get
    key-size-set!
    key-size-update!
    (property:)
    System.Security.Cryptography.RC2
    KeySize
    System.Int32))
