(library (system security cryptography aes)
  (export is? aes? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.Aes a))
  (define (aes? a) (clr-is System.Security.Cryptography.Aes a))
  (define-method-port
    create
    System.Security.Cryptography.Aes
    Create
    (static: System.Security.Cryptography.Aes System.String)
    (static: System.Security.Cryptography.Aes)))
