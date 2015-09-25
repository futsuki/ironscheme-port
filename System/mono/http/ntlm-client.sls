(library (mono http ntlm-client)
  (export new
          is?
          ntlm-client?
          authenticate
          pre-authenticate
          authentication-type
          can-pre-authenticate?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Http.NtlmClient a ...)))))
  (define (is? a) (clr-is Mono.Http.NtlmClient a))
  (define (ntlm-client? a) (clr-is Mono.Http.NtlmClient a))
  (define-method-port
    authenticate
    Mono.Http.NtlmClient
    Authenticate
    (System.Net.Authorization
      System.String
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-method-port
    pre-authenticate
    Mono.Http.NtlmClient
    PreAuthenticate
    (System.Net.Authorization
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-field-port
    authentication-type
    #f
    #f
    (property:)
    Mono.Http.NtlmClient
    AuthenticationType
    System.String)
  (define-field-port
    can-pre-authenticate?
    #f
    #f
    (property:)
    Mono.Http.NtlmClient
    CanPreAuthenticate
    System.Boolean))
