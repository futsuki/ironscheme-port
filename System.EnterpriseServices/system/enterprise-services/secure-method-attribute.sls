(library (system enterprise-services secure-method-attribute)
  (export new is? secure-method-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.SecureMethodAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.SecureMethodAttribute a))
  (define (secure-method-attribute? a)
    (clr-is System.EnterpriseServices.SecureMethodAttribute a)))
