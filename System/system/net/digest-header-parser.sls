(library (system net digest-header-parser)
  (export new
          is?
          digest-header-parser?
          parse?
          realm
          opaque
          nonce
          algorithm
          qop)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.DigestHeaderParser a ...)))))
  (define (is? a) (clr-is System.Net.DigestHeaderParser a))
  (define (digest-header-parser? a)
    (clr-is System.Net.DigestHeaderParser a))
  (define-method-port
    parse?
    System.Net.DigestHeaderParser
    Parse
    (System.Boolean))
  (define-field-port
    realm
    #f
    #f
    (property:)
    System.Net.DigestHeaderParser
    Realm
    System.String)
  (define-field-port
    opaque
    #f
    #f
    (property:)
    System.Net.DigestHeaderParser
    Opaque
    System.String)
  (define-field-port
    nonce
    #f
    #f
    (property:)
    System.Net.DigestHeaderParser
    Nonce
    System.String)
  (define-field-port
    algorithm
    #f
    #f
    (property:)
    System.Net.DigestHeaderParser
    Algorithm
    System.String)
  (define-field-port
    qop
    #f
    #f
    (property:)
    System.Net.DigestHeaderParser
    QOP
    System.String))
