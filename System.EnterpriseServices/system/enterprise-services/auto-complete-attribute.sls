(library (system enterprise-services auto-complete-attribute)
  (export new is? auto-complete-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.AutoCompleteAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.AutoCompleteAttribute a))
  (define (auto-complete-attribute? a)
    (clr-is System.EnterpriseServices.AutoCompleteAttribute a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.AutoCompleteAttribute
    Value
    System.Boolean))
