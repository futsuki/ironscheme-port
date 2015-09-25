(library (system security authentication authentication-exception)
  (export new is? authentication-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Authentication.AuthenticationException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Authentication.AuthenticationException a))
  (define (authentication-exception? a)
    (clr-is System.Security.Authentication.AuthenticationException a)))
