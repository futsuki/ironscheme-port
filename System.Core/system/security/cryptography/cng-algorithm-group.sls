(library (system security cryptography cng-algorithm-group)
  (export new
          is?
          cng-algorithm-group?
          get-hash-code
          to-string
          equals?
          algorithm-group
          diffie-hellman
          dsa
          ecdiffie-hellman
          ecdsa
          rsa)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Cryptography.CngAlgorithmGroup
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Cryptography.CngAlgorithmGroup a))
  (define (cng-algorithm-group? a)
    (clr-is System.Security.Cryptography.CngAlgorithmGroup a))
  (define-method-port
    get-hash-code
    System.Security.Cryptography.CngAlgorithmGroup
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Cryptography.CngAlgorithmGroup
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Security.Cryptography.CngAlgorithmGroup
    Equals
    (System.Boolean System.Object)
    (System.Boolean System.Security.Cryptography.CngAlgorithmGroup))
  (define-field-port
    algorithm-group
    #f
    #f
    (property:)
    System.Security.Cryptography.CngAlgorithmGroup
    AlgorithmGroup
    System.String)
  (define-field-port
    diffie-hellman
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithmGroup
    DiffieHellman
    System.Security.Cryptography.CngAlgorithmGroup)
  (define-field-port
    dsa
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithmGroup
    Dsa
    System.Security.Cryptography.CngAlgorithmGroup)
  (define-field-port
    ecdiffie-hellman
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithmGroup
    ECDiffieHellman
    System.Security.Cryptography.CngAlgorithmGroup)
  (define-field-port
    ecdsa
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithmGroup
    ECDsa
    System.Security.Cryptography.CngAlgorithmGroup)
  (define-field-port
    rsa
    #f
    #f
    (static: property:)
    System.Security.Cryptography.CngAlgorithmGroup
    Rsa
    System.Security.Cryptography.CngAlgorithmGroup))
