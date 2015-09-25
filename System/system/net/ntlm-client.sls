(library (system net ntlm-client)
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
        ((_ a ...) #'(clr-new System.Net.NtlmClient a ...)))))
  (define (is? a) (clr-is System.Net.NtlmClient a))
  (define (ntlm-client? a) (clr-is System.Net.NtlmClient a))
  (define-method-port
    authenticate
    System.Net.NtlmClient
    Authenticate
    (System.Net.Authorization
      System.String
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-method-port
    pre-authenticate
    System.Net.NtlmClient
    PreAuthenticate
    (System.Net.Authorization
      System.Net.WebRequest
      System.Net.ICredentials))
  (define-field-port
    authentication-type
    #f
    #f
    (property:)
    System.Net.NtlmClient
    AuthenticationType
    System.String)
  (define-field-port
    can-pre-authenticate?
    #f
    #f
    (property:)
    System.Net.NtlmClient
    CanPreAuthenticate
    System.Boolean))
