(library (system security principal ntaccount)
  (export new
          is?
          ntaccount?
          translate
          get-hash-code
          to-string
          is-valid-target-type?
          equals?
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Principal.NTAccount a ...)))))
  (define (is? a) (clr-is System.Security.Principal.NTAccount a))
  (define (ntaccount? a) (clr-is System.Security.Principal.NTAccount a))
  (define-method-port
    translate
    System.Security.Principal.NTAccount
    Translate
    (System.Security.Principal.IdentityReference System.Type))
  (define-method-port
    get-hash-code
    System.Security.Principal.NTAccount
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Principal.NTAccount
    ToString
    (System.String))
  (define-method-port
    is-valid-target-type?
    System.Security.Principal.NTAccount
    IsValidTargetType
    (System.Boolean System.Type))
  (define-method-port
    equals?
    System.Security.Principal.NTAccount
    Equals
    (System.Boolean System.Object))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Security.Principal.NTAccount
    Value
    System.String))
