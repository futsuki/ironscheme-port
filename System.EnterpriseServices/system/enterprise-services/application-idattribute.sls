(library (system enterprise-services application-idattribute)
  (export new is? application-idattribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ApplicationIDAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ApplicationIDAttribute a))
  (define (application-idattribute? a)
    (clr-is System.EnterpriseServices.ApplicationIDAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.EnterpriseServices.ApplicationIDAttribute
    Value
    System.Guid))
