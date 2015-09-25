(library (system security cryptography sha256)
  (export is? sha256? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.SHA256 a))
  (define (sha256? a) (clr-is System.Security.Cryptography.SHA256 a))
  (define-method-port
    create
    System.Security.Cryptography.SHA256
    Create
    (static: System.Security.Cryptography.SHA256 System.String)
    (static: System.Security.Cryptography.SHA256)))
