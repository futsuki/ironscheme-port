(library (mono security cryptography pkcs8)
  (export is? pkcs8? get-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.Cryptography.PKCS8 a))
  (define (pkcs8? a) (clr-is Mono.Security.Cryptography.PKCS8 a))
  (define-method-port
    get-type
    Mono.Security.Cryptography.PKCS8
    GetType
    (static: Mono.Security.Cryptography.PKCS8+KeyInfo System.Byte[])))
