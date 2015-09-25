(library (system security policy application-security-info)
  (export new
          is?
          application-security-info?
          application-evidence-get
          application-evidence-set!
          application-evidence-update!
          application-id-get
          application-id-set!
          application-id-update!
          default-request-set-get
          default-request-set-set!
          default-request-set-update!
          deployment-id-get
          deployment-id-set!
          deployment-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.ApplicationSecurityInfo
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.ApplicationSecurityInfo a))
  (define (application-security-info? a)
    (clr-is System.Security.Policy.ApplicationSecurityInfo a))
  (define-field-port
    application-evidence-get
    application-evidence-set!
    application-evidence-update!
    (property:)
    System.Security.Policy.ApplicationSecurityInfo
    ApplicationEvidence
    System.Security.Policy.Evidence)
  (define-field-port
    application-id-get
    application-id-set!
    application-id-update!
    (property:)
    System.Security.Policy.ApplicationSecurityInfo
    ApplicationId
    System.ApplicationId)
  (define-field-port
    default-request-set-get
    default-request-set-set!
    default-request-set-update!
    (property:)
    System.Security.Policy.ApplicationSecurityInfo
    DefaultRequestSet
    System.Security.PermissionSet)
  (define-field-port
    deployment-id-get
    deployment-id-set!
    deployment-id-update!
    (property:)
    System.Security.Policy.ApplicationSecurityInfo
    DeploymentId
    System.ApplicationId))
