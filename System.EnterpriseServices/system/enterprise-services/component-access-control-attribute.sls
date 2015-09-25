(library (system enterprise-services component-access-control-attribute)
  (export new is? component-access-control-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ComponentAccessControlAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.ComponentAccessControlAttribute
      a))
  (define (component-access-control-attribute? a)
    (clr-is
      System.EnterpriseServices.ComponentAccessControlAttribute
      a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.EnterpriseServices.ComponentAccessControlAttribute
    Value
    System.Boolean))
