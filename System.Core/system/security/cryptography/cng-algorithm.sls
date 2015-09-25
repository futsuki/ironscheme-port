(library (system security cryptography cng-algorithm)
  (export new
          is?
          cng-algorithm?
          get-hash-code
          to-string
          equals?
          algorithm
          ecdiffie-hellman-p256
          ecdiffie-hellman-p384
          ecdiffie-hellman-p521
          ecdsa-p256
          ecdsa-p384
          ecdsa-p521
          md5
          sha1
          sha256
          sha384
          sha512)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.CngAlgorithm a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.CngAlgorithm a))
  (define (cng-algorithm? a)
    (clr-is System.Security.Cryptography.CngAlgorithm a))
  (define-method-port
    get-hash-code
    System.Security.Cryptography.CngAlgorithm
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Cryptography.CngAlgorithm
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Security.Cryptography.CngAlgorithm
    Equals
    (System.Boolean System.Object)
    (System.Boolean System.Security.Cryptography.CngAlgorithm))
  (define-field-port
    algorithm
    #f
    #f
    (property:)
    System.Security.Cryptography.CngAlgorithm
    Algorithm
    System.String)
  (define-field-port
    ecdiffie-hellman-p256
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    ECDiffieHellmanP256
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    ecdiffie-hellman-p384
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    ECDiffieHellmanP384
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    ecdiffie-hellman-p521
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    ECDiffieHellmanP521
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    ecdsa-p256
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    ECDsaP256
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    ecdsa-p384
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    ECDsaP384
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    ecdsa-p521
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    ECDsaP521
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    md5
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    MD5
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    sha1
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    Sha1
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    sha256
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    Sha256
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    sha384
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    Sha384
    System.Security.Cryptography.CngAlgorithm)
  (define-field-port
    sha512
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithm
    Sha512
    System.Security.Cryptography.CngAlgorithm))
