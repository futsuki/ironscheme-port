(library (system enterprise-services private-component-attribute)
  (export new is? private-component-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.PrivateComponentAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.PrivateComponentAttribute a))
  (define (private-component-attribute? a)
    (clr-is System.EnterpriseServices.PrivateComponentAttribute a)))
