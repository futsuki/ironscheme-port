(library (system enterprise-services just-in-time-activation-attribute)
  (export new is? just-in-time-activation-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.JustInTimeActivationAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.JustInTimeActivationAttribute a))
  (define (just-in-time-activation-attribute? a)
    (clr-is System.EnterpriseServices.JustInTimeActivationAttribute a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.JustInTimeActivationAttribute
    Value
    System.Boolean))
