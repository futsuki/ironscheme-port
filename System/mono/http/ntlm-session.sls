(library (mono http ntlm-session)
  (export new is? ntlm-session? authenticate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Http.NtlmSession a ...)))))
  (define (is? a) (clr-is Mono.Http.NtlmSession a))
  (define (ntlm-session? a) (clr-is Mono.Http.NtlmSession a))
  (define-method-port
    authenticate
    Mono.Http.NtlmSession
    Authenticate
    (System.Net.Authorization
      System.String
      System.Net.WebRequest
      System.Net.ICredentials)))
