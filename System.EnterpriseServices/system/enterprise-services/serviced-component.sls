(library (system enterprise-services serviced-component)
  (export new is? serviced-component? dispose dispose-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.ServicedComponent
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.ServicedComponent a))
  (define (serviced-component? a)
    (clr-is System.EnterpriseServices.ServicedComponent a))
  (define-method-port
    dispose
    System.EnterpriseServices.ServicedComponent
    Dispose
    (System.Void))
  (define-method-port
    dispose-object
    System.EnterpriseServices.ServicedComponent
    DisposeObject
    (static: System.Void System.EnterpriseServices.ServicedComponent)))
