(library (system net basic-client)
  (export new
          is?
          basic-client?
          authenticate
          pre-authenticate
          authentication-type
          can-pre-authenticate?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.BasicClient a ...)))))
  (define (is? a) (clr-is System.Net.BasicClient a))
  (define (basic-client? a) (clr-is System.Net.BasicClient a))
  (define-method-port
    authenticate
    System.Net.BasicClient
    Authenticate
    (System.Net.Authorization
      System.String
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-method-port
    pre-authenticate
    System.Net.BasicClient
    PreAuthenticate
    (System.Net.Authorization
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-field-port
    authentication-type
    #f
    #f
    (property:)
    System.Net.BasicClient
    AuthenticationType
    System.String)
  (define-field-port
    can-pre-authenticate?
    #f
    #f
    (property:)
    System.Net.BasicClient
    CanPreAuthenticate
    System.Boolean))
