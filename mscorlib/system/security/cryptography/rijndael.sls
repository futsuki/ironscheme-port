(library (system security cryptography rijndael)
  (export is? rijndael? create)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.Rijndael a))
  (define (rijndael? a)
    (clr-is System.Security.Cryptography.Rijndael a))
  (define-method-port
    create
    System.Security.Cryptography.Rijndael
    Create
    (static: System.Security.Cryptography.Rijndael System.String)
    (static: System.Security.Cryptography.Rijndael)))
