(library (system security cryptography sha384)
  (export is? sha384? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.SHA384 a))
  (define (sha384? a) (clr-is System.Security.Cryptography.SHA384 a))
  (define-method-port
    create
    System.Security.Cryptography.SHA384
    Create
    (static: System.Security.Cryptography.SHA384 System.String)
    (static: System.Security.Cryptography.SHA384)))
