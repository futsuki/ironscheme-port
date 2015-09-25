(library (system enterprise-services resource-pool)
  (export new is? resource-pool? put-resource? get-resource)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.EnterpriseServices.ResourcePool a ...)))))
  (define (is? a) (clr-is System.EnterpriseServices.ResourcePool a))
  (define (resource-pool? a)
    (clr-is System.EnterpriseServices.ResourcePool a))
  (define-method-port
    put-resource?
    System.EnterpriseServices.ResourcePool
    PutResource
    (System.Boolean System.Object))
  (define-method-port
    get-resource
    System.EnterpriseServices.ResourcePool
    GetResource
    (System.Object)))
