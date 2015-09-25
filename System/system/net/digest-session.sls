(library (system net digest-session)
  (export new
          is?
          digest-session?
          parse?
          authenticate
          algorithm
          realm
          nonce
          opaque
          qop
          cnonce
          last-use)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.DigestSession a ...)))))
  (define (is? a) (clr-is System.Net.DigestSession a))
  (define (digest-session? a) (clr-is System.Net.DigestSession a))
  (define-method-port
    parse?
    System.Net.DigestSession
    Parse
    (System.Boolean System.String))
  (define-method-port
    authenticate
    System.Net.DigestSession
    Authenticate
    (System.Net.Authorization
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-field-port
    algorithm
    #f
    #f
    (property:)
    System.Net.DigestSession
    Algorithm
    System.String)
  (define-field-port
    realm
    #f
    #f
    (property:)
    System.Net.DigestSession
    Realm
    System.String)
  (define-field-port
    nonce
    #f
    #f
    (property:)
    System.Net.DigestSession
    Nonce
    System.String)
  (define-field-port
    opaque
    #f
    #f
    (property:)
    System.Net.DigestSession
    Opaque
    System.String)
  (define-field-port
    qop
    #f
    #f
    (property:)
    System.Net.DigestSession
    QOP
    System.String)
  (define-field-port
    cnonce
    #f
    #f
    (property:)
    System.Net.DigestSession
    CNonce
    System.String)
  (define-field-port
    last-use
    #f
    #f
    (property:)
    System.Net.DigestSession
    LastUse
    System.DateTime))
