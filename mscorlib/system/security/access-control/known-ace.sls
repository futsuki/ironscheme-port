(library (system security access-control known-ace)
  (export is?
          known-ace?
          access-mask-get
          access-mask-set!
          access-mask-update!
          security-identifier-get
          security-identifier-set!
          security-identifier-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.AccessControl.KnownAce a))
  (define (known-ace? a)
    (clr-is System.Security.AccessControl.KnownAce a))
  (define-field-port
    access-mask-get
    access-mask-set!
    access-mask-update!
    (property:)
    System.Security.AccessControl.KnownAce
    AccessMask
    System.Int32)
  (define-field-port
    security-identifier-get
    security-identifier-set!
    security-identifier-update!
    (property:)
    System.Security.AccessControl.KnownAce
    SecurityIdentifier
    System.Security.Principal.SecurityIdentifier))
