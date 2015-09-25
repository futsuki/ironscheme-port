(library (system security cryptography sha512)
  (export is? sha512? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.SHA512 a))
  (define (sha512? a) (clr-is System.Security.Cryptography.SHA512 a))
  (define-method-port
    create
    System.Security.Cryptography.SHA512
    Create
    (static: System.Security.Cryptography.SHA512 System.String)
    (static: System.Security.Cryptography.SHA512)))
