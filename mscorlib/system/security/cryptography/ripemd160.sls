(library (system security cryptography ripemd160)
  (export is? ripemd160? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.RIPEMD160 a))
  (define (ripemd160? a)
    (clr-is System.Security.Cryptography.RIPEMD160 a))
  (define-method-port
    create
    System.Security.Cryptography.RIPEMD160
    Create
    (static: System.Security.Cryptography.RIPEMD160 System.String)
    (static: System.Security.Cryptography.RIPEMD160)))
