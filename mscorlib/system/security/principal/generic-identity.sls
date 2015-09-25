(library (system security principal generic-identity)
  (export new
          is?
          generic-identity?
          authentication-type
          name
          is-authenticated?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Principal.GenericIdentity a ...)))))
  (define (is? a) (clr-is System.Security.Principal.GenericIdentity a))
  (define (generic-identity? a)
    (clr-is System.Security.Principal.GenericIdentity a))
  (define-field-port
    authentication-type
    #f
    #f
    (property:)
    System.Security.Principal.GenericIdentity
    AuthenticationType
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Security.Principal.GenericIdentity
    Name
    System.String)
  (define-field-port
    is-authenticated?
    #f
    #f
    (property:)
    System.Security.Principal.GenericIdentity
    IsAuthenticated
    System.Boolean))
