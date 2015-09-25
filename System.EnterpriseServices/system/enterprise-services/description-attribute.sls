(library (system enterprise-services description-attribute)
  (export new is? description-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.DescriptionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.DescriptionAttribute a))
  (define (description-attribute? a)
    (clr-is System.EnterpriseServices.DescriptionAttribute a)))
