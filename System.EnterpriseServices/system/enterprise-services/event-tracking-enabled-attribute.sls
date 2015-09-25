(library (system enterprise-services event-tracking-enabled-attribute)
  (export new is? event-tracking-enabled-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.EventTrackingEnabledAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.EventTrackingEnabledAttribute a))
  (define (event-tracking-enabled-attribute? a)
    (clr-is System.EnterpriseServices.EventTrackingEnabledAttribute a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.EventTrackingEnabledAttribute
    Value
    System.Boolean))
