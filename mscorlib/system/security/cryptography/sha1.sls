(library (system security cryptography sha1)
  (export is? sha1? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.SHA1 a))
  (define (sha1? a) (clr-is System.Security.Cryptography.SHA1 a))
  (define-method-port
    create
    System.Security.Cryptography.SHA1
    Create
    (static: System.Security.Cryptography.SHA1 System.String)
    (static: System.Security.Cryptography.SHA1)))
