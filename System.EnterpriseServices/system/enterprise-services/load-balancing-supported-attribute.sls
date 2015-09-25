(library (system enterprise-services load-balancing-supported-attribute)
  (export new is? load-balancing-supported-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.LoadBalancingSupportedAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.LoadBalancingSupportedAttribute
      a))
  (define (load-balancing-supported-attribute? a)
    (clr-is
      System.EnterpriseServices.LoadBalancingSupportedAttribute
      a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.LoadBalancingSupportedAttribute
    Value
    System.Boolean))
