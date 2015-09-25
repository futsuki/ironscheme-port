(library (system security principal security-identifier)
  (export new
          is?
          security-identifier?
          translate
          get-hash-code
          is-well-known?
          to-string
          get-binary-form
          compare-to
          is-equal-domain-sid?
          is-account-sid?
          is-valid-target-type?
          equals?
          max-binary-length
          min-binary-length
          account-domain-sid
          binary-length
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Principal.SecurityIdentifier
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Principal.SecurityIdentifier a))
  (define (security-identifier? a)
    (clr-is System.Security.Principal.SecurityIdentifier a))
  (define-method-port
    translate
    System.Security.Principal.SecurityIdentifier
    Translate
    (System.Security.Principal.IdentityReference System.Type))
  (define-method-port
    get-hash-code
    System.Security.Principal.SecurityIdentifier
    GetHashCode
    (System.Int32))
  (define-method-port
    is-well-known?
    System.Security.Principal.SecurityIdentifier
    IsWellKnown
    (System.Boolean System.Security.Principal.WellKnownSidType))
  (define-method-port
    to-string
    System.Security.Principal.SecurityIdentifier
    ToString
    (System.String))
  (define-method-port
    get-binary-form
    System.Security.Principal.SecurityIdentifier
    GetBinaryForm
    (System.Void System.Byte[] System.Int32))
  (define-method-port
    compare-to
    System.Security.Principal.SecurityIdentifier
    CompareTo
    (System.Int32 System.Security.Principal.SecurityIdentifier))
  (define-method-port
    is-equal-domain-sid?
    System.Security.Principal.SecurityIdentifier
    IsEqualDomainSid
    (System.Boolean System.Security.Principal.SecurityIdentifier))
  (define-method-port
    is-account-sid?
    System.Security.Principal.SecurityIdentifier
    IsAccountSid
    (System.Boolean))
  (define-method-port
    is-valid-target-type?
    System.Security.Principal.SecurityIdentifier
    IsValidTargetType
    (System.Boolean System.Type))
  (define-method-port
    equals?
    System.Security.Principal.SecurityIdentifier
    Equals
    (System.Boolean System.Security.Principal.SecurityIdentifier)
    (System.Boolean System.Object))
  (define-field-port
    max-binary-length
    #f
    #f
    (static:)
    System.Security.Principal.SecurityIdentifier
    MaxBinaryLength
    System.Int32)
  (define-field-port
    min-binary-length
    #f
    #f
    (static:)
    System.Security.Principal.SecurityIdentifier
    MinBinaryLength
    System.Int32)
  (define-field-port
    account-domain-sid
    #f
    #f
    (property:)
    System.Security.Principal.SecurityIdentifier
    AccountDomainSid
    System.Security.Principal.SecurityIdentifier)
  (define-field-port
    binary-length
    #f
    #f
    (property:)
    System.Security.Principal.SecurityIdentifier
    BinaryLength
    System.Int32)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Security.Principal.SecurityIdentifier
    Value
    System.String))
