(library (system enterprise-services application-activation-attribute)
  (export new
          is?
          application-activation-attribute?
          soap-mailbox-get
          soap-mailbox-set!
          soap-mailbox-update!
          soap-vroot-get
          soap-vroot-set!
          soap-vroot-update!
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ApplicationActivationAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ApplicationActivationAttribute a))
  (define (application-activation-attribute? a)
    (clr-is System.EnterpriseServices.ApplicationActivationAttribute a))
  (define-field-port
    soap-mailbox-get
    soap-mailbox-set!
    soap-mailbox-update!
    (property:)
    System.EnterpriseServices.ApplicationActivationAttribute
    SoapMailbox
    System.String)
  (define-field-port
    soap-vroot-get
    soap-vroot-set!
    soap-vroot-update!
    (property:)
    System.EnterpriseServices.ApplicationActivationAttribute
    SoapVRoot
    System.String)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.EnterpriseServices.ApplicationActivationAttribute
    Value
    System.EnterpriseServices.ActivationOption))
