(library (system enterprise-services internal com-soap-publish-error)
  (export new is? com-soap-publish-error? report)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.ComSoapPublishError
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.ComSoapPublishError a))
  (define (com-soap-publish-error? a)
    (clr-is System.EnterpriseServices.Internal.ComSoapPublishError a))
  (define-method-port
    report
    System.EnterpriseServices.Internal.ComSoapPublishError
    Report
    (static: System.Void System.String)))
