(library (system enterprise-services construction-enabled-attribute)
  (export new
          is?
          construction-enabled-attribute?
          default-get
          default-set!
          default-update!
          enabled?-get
          enabled?-set!
          enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ConstructionEnabledAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ConstructionEnabledAttribute a))
  (define (construction-enabled-attribute? a)
    (clr-is System.EnterpriseServices.ConstructionEnabledAttribute a))
  (define-field-port
    default-get
    default-set!
    default-update!
    (property:)
    System.EnterpriseServices.ConstructionEnabledAttribute
    Default
    System.String)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.EnterpriseServices.ConstructionEnabledAttribute
    Enabled
    System.Boolean))
