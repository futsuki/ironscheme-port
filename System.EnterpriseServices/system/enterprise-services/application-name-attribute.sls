(library (system enterprise-services application-name-attribute)
  (export new is? application-name-attribute? value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ApplicationNameAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ApplicationNameAttribute a))
  (define (application-name-attribute? a)
    (clr-is System.EnterpriseServices.ApplicationNameAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.EnterpriseServices.ApplicationNameAttribute
    Value
    System.String))
