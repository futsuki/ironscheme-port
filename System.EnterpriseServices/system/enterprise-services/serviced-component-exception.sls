(library (system enterprise-services serviced-component-exception)
  (export new is? serviced-component-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ServicedComponentException
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ServicedComponentException a))
  (define (serviced-component-exception? a)
    (clr-is System.EnterpriseServices.ServicedComponentException a)))
