(library (system enterprise-services internal soap-server-vroot)
  (export new
          is?
          soap-server-vroot?
          delete-virtual-root-ex
          create-virtual-root-ex
          get-virtual-root-status)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.SoapServerVRoot
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.SoapServerVRoot a))
  (define (soap-server-vroot? a)
    (clr-is System.EnterpriseServices.Internal.SoapServerVRoot a))
  (define-method-port
    delete-virtual-root-ex
    System.EnterpriseServices.Internal.SoapServerVRoot
    DeleteVirtualRootEx
    (System.Void System.String System.String System.String))
  (define-method-port
    create-virtual-root-ex
    System.EnterpriseServices.Internal.SoapServerVRoot
    CreateVirtualRootEx
    (System.Void
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String&
      System.String&
      System.String&))
  (define-method-port
    get-virtual-root-status
    System.EnterpriseServices.Internal.SoapServerVRoot
    GetVirtualRootStatus
    (System.Void
      System.String
      System.String
      System.String
      System.String&
      System.String&
      System.String&
      System.String&
      System.String&
      System.String&
      System.String&
      System.String&
      System.String&)))
