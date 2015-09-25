(library (system enterprise-services internal soap-client-import)
  (export new is? soap-client-import? process-client-tlb-ex)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.SoapClientImport
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.SoapClientImport a))
  (define (soap-client-import? a)
    (clr-is System.EnterpriseServices.Internal.SoapClientImport a))
  (define-method-port
    process-client-tlb-ex
    System.EnterpriseServices.Internal.SoapClientImport
    ProcessClientTlbEx
    (System.Void
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String)))
