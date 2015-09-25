(library (system enterprise-services internal soap-server-tlb)
  (export new is? soap-server-tlb? add-server-tlb delete-server-tlb)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.SoapServerTlb
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.SoapServerTlb a))
  (define (soap-server-tlb? a)
    (clr-is System.EnterpriseServices.Internal.SoapServerTlb a))
  (define-method-port
    add-server-tlb
    System.EnterpriseServices.Internal.SoapServerTlb
    AddServerTlb
    (System.Void
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String&
      System.String&))
  (define-method-port
    delete-server-tlb
    System.EnterpriseServices.Internal.SoapServerTlb
    DeleteServerTlb
    (System.Void
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String)))
