(library (system security cryptography random-number-generator)
  (export is?
          random-number-generator?
          create
          get-bytes
          get-non-zero-bytes)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Cryptography.RandomNumberGenerator a))
  (define (random-number-generator? a)
    (clr-is System.Security.Cryptography.RandomNumberGenerator a))
  (define-method-port
    create
    System.Security.Cryptography.RandomNumberGenerator
    Create
    (static:
      System.Security.Cryptography.RandomNumberGenerator
      System.String)
    (static: System.Security.Cryptography.RandomNumberGenerator))
  (define-method-port
    get-bytes
    System.Security.Cryptography.RandomNumberGenerator
    GetBytes
    (System.Void System.Byte[]))
  (define-method-port
    get-non-zero-bytes
    System.Security.Cryptography.RandomNumberGenerator
    GetNonZeroBytes
    (System.Void System.Byte[])))
