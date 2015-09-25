(library (mono security cryptography key-builder)
  (export is? key-builder? iv key)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Security.Cryptography.KeyBuilder a))
  (define (key-builder? a)
    (clr-is Mono.Security.Cryptography.KeyBuilder a))
  (define-method-port
    iv
    Mono.Security.Cryptography.KeyBuilder
    IV
    (static: System.Byte[] System.Int32))
  (define-method-port
    key
    Mono.Security.Cryptography.KeyBuilder
    Key
    (static: System.Byte[] System.Int32)))
