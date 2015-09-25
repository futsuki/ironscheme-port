(library (system security cryptography derive-bytes)
  (export is? derive-bytes? get-bytes reset)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.Cryptography.DeriveBytes a))
  (define (derive-bytes? a)
    (clr-is System.Security.Cryptography.DeriveBytes a))
  (define-method-port
    get-bytes
    System.Security.Cryptography.DeriveBytes
    GetBytes
    (System.Byte[] System.Int32))
  (define-method-port
    reset
    System.Security.Cryptography.DeriveBytes
    Reset
    (System.Void)))
