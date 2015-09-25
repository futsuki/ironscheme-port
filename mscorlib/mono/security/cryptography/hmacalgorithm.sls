(library (mono security cryptography hmacalgorithm)
  (export new
          is?
          hmacalgorithm?
          dispose
          initialize
          core
          final
          algo
          hash-name-get
          hash-name-set!
          hash-name-update!
          key-get
          key-set!
          key-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Security.Cryptography.HMACAlgorithm a ...)))))
  (define (is? a) (clr-is Mono.Security.Cryptography.HMACAlgorithm a))
  (define (hmacalgorithm? a)
    (clr-is Mono.Security.Cryptography.HMACAlgorithm a))
  (define-method-port
    dispose
    Mono.Security.Cryptography.HMACAlgorithm
    Dispose
    (System.Void))
  (define-method-port
    initialize
    Mono.Security.Cryptography.HMACAlgorithm
    Initialize
    (System.Void))
  (define-method-port
    core
    Mono.Security.Cryptography.HMACAlgorithm
    Core
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    final
    Mono.Security.Cryptography.HMACAlgorithm
    Final
    (System.Byte[]))
  (define-field-port
    algo
    #f
    #f
    (property:)
    Mono.Security.Cryptography.HMACAlgorithm
    Algo
    System.Security.Cryptography.HashAlgorithm)
  (define-field-port
    hash-name-get
    hash-name-set!
    hash-name-update!
    (property:)
    Mono.Security.Cryptography.HMACAlgorithm
    HashName
    System.String)
  (define-field-port
    key-get
    key-set!
    key-update!
    (property:)
    Mono.Security.Cryptography.HMACAlgorithm
    Key
    System.Byte[]))
