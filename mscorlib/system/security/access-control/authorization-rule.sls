(library (system security access-control authorization-rule)
  (export is?
          authorization-rule?
          identity-reference
          inheritance-flags
          is-inherited?
          propagation-flags)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.AuthorizationRule a))
  (define (authorization-rule? a)
    (clr-is System.Security.AccessControl.AuthorizationRule a))
  (define-field-port
    identity-reference
    #f
    #f
    (property:)
    System.Security.AccessControl.AuthorizationRule
    IdentityReference
    System.Security.Principal.IdentityReference)
  (define-field-port
    inheritance-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.AuthorizationRule
    InheritanceFlags
    System.Security.AccessControl.InheritanceFlags)
  (define-field-port
    is-inherited?
    #f
    #f
    (property:)
    System.Security.AccessControl.AuthorizationRule
    IsInherited
    System.Boolean)
  (define-field-port
    propagation-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.AuthorizationRule
    PropagationFlags
    System.Security.AccessControl.PropagationFlags))
