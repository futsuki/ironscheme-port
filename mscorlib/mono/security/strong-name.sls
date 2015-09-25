(library (mono security strong-name)
  (export new
          is?
          strong-name?
          hash
          verify?
          get-bytes
          sign?
          can-sign?
          rsa-get
          rsa-set!
          rsa-update!
          public-key
          public-key-token
          token-algorithm-get
          token-algorithm-set!
          token-algorithm-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.StrongName a ...)))))
  (define (is? a) (clr-is Mono.Security.StrongName a))
  (define (strong-name? a) (clr-is Mono.Security.StrongName a))
  (define-method-port
    hash
    Mono.Security.StrongName
    Hash
    (System.Byte[] System.String))
  (define-method-port
    verify?
    Mono.Security.StrongName
    Verify
    (System.Boolean System.IO.Stream)
    (System.Boolean System.String))
  (define-method-port
    get-bytes
    Mono.Security.StrongName
    GetBytes
    (System.Byte[]))
  (define-method-port
    sign?
    Mono.Security.StrongName
    Sign
    (System.Boolean System.String))
  (define-field-port
    can-sign?
    #f
    #f
    (property:)
    Mono.Security.StrongName
    CanSign
    System.Boolean)
  (define-field-port
    rsa-get
    rsa-set!
    rsa-update!
    (property:)
    Mono.Security.StrongName
    RSA
    System.Security.Cryptography.RSA)
  (define-field-port
    public-key
    #f
    #f
    (property:)
    Mono.Security.StrongName
    PublicKey
    System.Byte[])
  (define-field-port
    public-key-token
    #f
    #f
    (property:)
    Mono.Security.StrongName
    PublicKeyToken
    System.Byte[])
  (define-field-port
    token-algorithm-get
    token-algorithm-set!
    token-algorithm-update!
    (property:)
    Mono.Security.StrongName
    TokenAlgorithm
    System.String))
