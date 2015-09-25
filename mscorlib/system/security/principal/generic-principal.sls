(library (system security principal generic-principal)
  (export new is? generic-principal? is-in-role? identity)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Principal.GenericPrincipal
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Principal.GenericPrincipal a))
  (define (generic-principal? a)
    (clr-is System.Security.Principal.GenericPrincipal a))
  (define-method-port
    is-in-role?
    System.Security.Principal.GenericPrincipal
    IsInRole
    (System.Boolean System.String))
  (define-field-port
    identity
    #f
    #f
    (property:)
    System.Security.Principal.GenericPrincipal
    Identity
    System.Security.Principal.IIdentity))
