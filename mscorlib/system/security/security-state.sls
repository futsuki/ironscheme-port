(library (system security security-state)
  (export is? security-state? ensure-state is-state-available?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.SecurityState a))
  (define (security-state? a) (clr-is System.Security.SecurityState a))
  (define-method-port
    ensure-state
    System.Security.SecurityState
    EnsureState
    (System.Void))
  (define-method-port
    is-state-available?
    System.Security.SecurityState
    IsStateAvailable
    (System.Boolean)))
