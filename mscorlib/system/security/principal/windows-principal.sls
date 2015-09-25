(library (system security principal windows-principal)
  (export new is? windows-principal? is-in-role? identity)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Principal.WindowsPrincipal
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Principal.WindowsPrincipal a))
  (define (windows-principal? a)
    (clr-is System.Security.Principal.WindowsPrincipal a))
  (define-method-port
    is-in-role?
    System.Security.Principal.WindowsPrincipal
    IsInRole
    (System.Boolean System.Security.Principal.SecurityIdentifier)
    (System.Boolean System.Security.Principal.WindowsBuiltInRole)
    (System.Boolean System.String)
    (System.Boolean System.Int32))
  (define-field-port
    identity
    #f
    #f
    (property:)
    System.Security.Principal.WindowsPrincipal
    Identity
    System.Security.Principal.IIdentity))
