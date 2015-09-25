(library (system security cryptography hmac)
  (export is?
          hmac?
          create
          initialize
          hash-name-get
          hash-name-set!
          hash-name-update!
          key-get
          key-set!
          key-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.HMAC a))
  (define (hmac? a) (clr-is System.Security.Cryptography.HMAC a))
  (define-method-port
    create
    System.Security.Cryptography.HMAC
    Create
    (static: System.Security.Cryptography.HMAC System.String)
    (static: System.Security.Cryptography.HMAC))
  (define-method-port
    initialize
    System.Security.Cryptography.HMAC
    Initialize
    (System.Void))
  (define-field-port
    hash-name-get
    hash-name-set!
    hash-name-update!
    (property:)
    System.Security.Cryptography.HMAC
    HashName
    System.String)
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    System.Security.Cryptography.HMAC
    Key
    System.Byte[]))
