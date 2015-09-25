(library (system security cryptography md5)
  (export is? md5? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.MD5 a))
  (define (md5? a) (clr-is System.Security.Cryptography.MD5 a))
  (define-method-port
    create
    System.Security.Cryptography.MD5
    Create
    (static: System.Security.Cryptography.MD5 System.String)
    (static: System.Security.Cryptography.MD5)))
