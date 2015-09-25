(library (system security policy application-trust)
  (export new
          is?
          application-trust?
          from-xml
          to-xml
          application-identity-get
          application-identity-set!
          application-identity-update!
          default-grant-set-get
          default-grant-set-set!
          default-grant-set-update!
          extra-info-get
          extra-info-set!
          extra-info-update!
          is-application-trusted-to-run?-get
          is-application-trusted-to-run?-set!
          is-application-trusted-to-run?-update!
          persist?-get
          persist?-set!
          persist?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.ApplicationTrust a ...)))))
  (define (is? a) (clr-is System.Security.Policy.ApplicationTrust a))
  (define (application-trust? a)
    (clr-is System.Security.Policy.ApplicationTrust a))
  (define-method-port
    from-xml
    System.Security.Policy.ApplicationTrust
    FromXml
    (System.Void System.Security.SecurityElement))
  (define-method-port
    to-xml
    System.Security.Policy.ApplicationTrust
    ToXml
    (System.Security.SecurityElement))
  (define-field-port
    application-identity-get
    application-identity-set!
    application-identity-update!
    (property:)
    System.Security.Policy.ApplicationTrust
    ApplicationIdentity
    System.ApplicationIdentity)
  (define-field-port
    default-grant-set-get
    default-grant-set-set!
    default-grant-set-update!
    (property:)
    System.Security.Policy.ApplicationTrust
    DefaultGrantSet
    System.Security.Policy.PolicyStatement)
  (define-field-port
    extra-info-get
    extra-info-set!
    extra-info-update!
    (property:)
    System.Security.Policy.ApplicationTrust
    ExtraInfo
    System.Object)
  (define-field-port
    is-application-trusted-to-run?-get
    is-application-trusted-to-run?-set!
    is-application-trusted-to-run?-update!
    (property:)
    System.Security.Policy.ApplicationTrust
    IsApplicationTrustedToRun
    System.Boolean)
  (define-field-port
    persist?-get
    persist?-set!
    persist?-update!
    (property:)
    System.Security.Policy.ApplicationTrust
    Persist
    System.Boolean))
