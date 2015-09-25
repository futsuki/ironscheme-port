(library (system
          enterprise-services
          must-run-in-client-context-attribute)
  (export new is? must-run-in-client-context-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.MustRunInClientContextAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.MustRunInClientContextAttribute
      a))
  (define (must-run-in-client-context-attribute? a)
    (clr-is
      System.EnterpriseServices.MustRunInClientContextAttribute
      a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.MustRunInClientContextAttribute
    Value
    System.Boolean))
