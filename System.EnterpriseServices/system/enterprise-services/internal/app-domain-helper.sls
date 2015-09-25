(library (system enterprise-services internal app-domain-helper)
  (export new is? app-domain-helper?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.AppDomainHelper
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.AppDomainHelper a))
  (define (app-domain-helper? a)
    (clr-is System.EnterpriseServices.Internal.AppDomainHelper a)))
