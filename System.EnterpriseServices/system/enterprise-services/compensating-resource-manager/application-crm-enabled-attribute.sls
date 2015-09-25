(library (system
          enterprise-services
          compensating-resource-manager
          application-crm-enabled-attribute)
  (export new is? application-crm-enabled-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.CompensatingResourceManager.ApplicationCrmEnabledAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.ApplicationCrmEnabledAttribute
      a))
  (define (application-crm-enabled-attribute? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.ApplicationCrmEnabledAttribute
      a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.ApplicationCrmEnabledAttribute
    Value
    System.Boolean))
