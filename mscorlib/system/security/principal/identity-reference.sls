(library (system security principal identity-reference)
  (export is?
          identity-reference?
          translate
          get-hash-code
          to-string
          is-valid-target-type?
          equals?
          value)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Principal.IdentityReference a))
  (define (identity-reference? a)
    (clr-is System.Security.Principal.IdentityReference a))
  (define-method-port
    translate
    System.Security.Principal.IdentityReference
    Translate
    (System.Security.Principal.IdentityReference System.Type))
  (define-method-port
    get-hash-code
    System.Security.Principal.IdentityReference
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Principal.IdentityReference
    ToString
    (System.String))
  (define-method-port
    is-valid-target-type?
    System.Security.Principal.IdentityReference
    IsValidTargetType
    (System.Boolean System.Type))
  (define-method-port
    equals?
    System.Security.Principal.IdentityReference
    Equals
    (System.Boolean System.Object))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Security.Principal.IdentityReference
    Value
    System.String))
