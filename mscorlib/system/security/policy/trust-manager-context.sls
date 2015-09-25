(library (system security policy trust-manager-context)
  (export new
          is?
          trust-manager-context?
          ignore-persisted-decision?-get
          ignore-persisted-decision?-set!
          ignore-persisted-decision?-update!
          keep-alive?-get
          keep-alive?-set!
          keep-alive?-update!
          no-prompt?-get
          no-prompt?-set!
          no-prompt?-update!
          persist?-get
          persist?-set!
          persist?-update!
          previous-application-identity-get
          previous-application-identity-set!
          previous-application-identity-update!
          uicontext-get
          uicontext-set!
          uicontext-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.TrustManagerContext
             a
             ...)))))
  (define (is? a) (clr-is System.Security.Policy.TrustManagerContext a))
  (define (trust-manager-context? a)
    (clr-is System.Security.Policy.TrustManagerContext a))
  (define-field-port
    ignore-persisted-decision?-get
    ignore-persisted-decision?-set!
    ignore-persisted-decision?-update!
    (property:)
    System.Security.Policy.TrustManagerContext
    IgnorePersistedDecision
    System.Boolean)
  (define-field-port
    keep-alive?-get
    keep-alive?-set!
    keep-alive?-update!
    (property:)
    System.Security.Policy.TrustManagerContext
    KeepAlive
    System.Boolean)
  (define-field-port
    no-prompt?-get
    no-prompt?-set!
    no-prompt?-update!
    (property:)
    System.Security.Policy.TrustManagerContext
    NoPrompt
    System.Boolean)
  (define-field-port
    persist?-get
    persist?-set!
    persist?-update!
    (property:)
    System.Security.Policy.TrustManagerContext
    Persist
    System.Boolean)
  (define-field-port
    previous-application-identity-get
    previous-application-identity-set!
    previous-application-identity-update!
    (property:)
    System.Security.Policy.TrustManagerContext
    PreviousApplicationIdentity
    System.ApplicationIdentity)
  (define-field-port
    uicontext-get
    uicontext-set!
    uicontext-update!
    (property:)
    System.Security.Policy.TrustManagerContext
    UIContext
    System.Security.Policy.TrustManagerUIContext))
