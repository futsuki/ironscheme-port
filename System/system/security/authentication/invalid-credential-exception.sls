(library (system security authentication invalid-credential-exception)
  (export new is? invalid-credential-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Authentication.InvalidCredentialException
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Security.Authentication.InvalidCredentialException
      a))
  (define (invalid-credential-exception? a)
    (clr-is
      System.Security.Authentication.InvalidCredentialException
      a)))
