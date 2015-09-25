(library (system enterprise-services service-domain)
  (export is? service-domain? leave enter)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.EnterpriseServices.ServiceDomain a))
  (define (service-domain? a)
    (clr-is System.EnterpriseServices.ServiceDomain a))
  (define-method-port
    leave
    System.EnterpriseServices.ServiceDomain
    Leave
    (static: System.EnterpriseServices.TransactionStatus))
  (define-method-port
    enter
    System.EnterpriseServices.ServiceDomain
    Enter
    (static: System.Void System.EnterpriseServices.ServiceConfig)))
