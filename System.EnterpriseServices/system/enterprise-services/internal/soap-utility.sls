(library (system enterprise-services internal soap-utility)
  (export new
          is?
          soap-utility?
          get-server-bin-path
          get-server-physical-path
          present)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.SoapUtility
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.SoapUtility a))
  (define (soap-utility? a)
    (clr-is System.EnterpriseServices.Internal.SoapUtility a))
  (define-method-port
    get-server-bin-path
    System.EnterpriseServices.Internal.SoapUtility
    GetServerBinPath
    (System.Void
      System.String
      System.String
      System.String
      System.String&))
  (define-method-port
    get-server-physical-path
    System.EnterpriseServices.Internal.SoapUtility
    GetServerPhysicalPath
    (System.Void
      System.String
      System.String
      System.String
      System.String&))
  (define-method-port
    present
    System.EnterpriseServices.Internal.SoapUtility
    Present
    (System.Void)))
