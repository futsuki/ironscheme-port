(library (system security cryptography keyed-hash-algorithm)
  (export is? keyed-hash-algorithm? create key-get key-set! key-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.KeyedHashAlgorithm a))
  (define (keyed-hash-algorithm? a)
    (clr-is System.Security.Cryptography.KeyedHashAlgorithm a))
  (define-method-port
    create
    System.Security.Cryptography.KeyedHashAlgorithm
    Create
    (static:
      System.Security.Cryptography.KeyedHashAlgorithm
      System.String)
    (static: System.Security.Cryptography.KeyedHashAlgorithm))
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    System.Security.Cryptography.KeyedHashAlgorithm
    Key
    System.Byte[]))
