(library (system net http-listener-basic-identity)
  (export new is? http-listener-basic-identity? password)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.HttpListenerBasicIdentity a ...)))))
  (define (is? a) (clr-is System.Net.HttpListenerBasicIdentity a))
  (define (http-listener-basic-identity? a)
    (clr-is System.Net.HttpListenerBasicIdentity a))
  (define-field-port
    password
    #f
    #f
    (property:)
    System.Net.HttpListenerBasicIdentity
    Password
    System.String))
