(library (system net digest-client)
  (export new
          is?
          digest-client?
          authenticate
          pre-authenticate
          authentication-type
          can-pre-authenticate?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.DigestClient a ...)))))
  (define (is? a) (clr-is System.Net.DigestClient a))
  (define (digest-client? a) (clr-is System.Net.DigestClient a))
  (define-method-port
    authenticate
    System.Net.DigestClient
    Authenticate
    (System.Net.Authorization
      System.String
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-method-port
    pre-authenticate
    System.Net.DigestClient
    PreAuthenticate
    (System.Net.Authorization
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-field-port
    authentication-type
    #f
    #f
    (property:)
    System.Net.DigestClient
    AuthenticationType
    System.String)
  (define-field-port
    can-pre-authenticate?
    #f
    #f
    (property:)
    System.Net.DigestClient
    CanPreAuthenticate
    System.Boolean))
