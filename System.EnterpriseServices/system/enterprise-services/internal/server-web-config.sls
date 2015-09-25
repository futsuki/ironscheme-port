(library (system enterprise-services internal server-web-config)
  (export new is? server-web-config? add-element create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.ServerWebConfig
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.ServerWebConfig a))
  (define (server-web-config? a)
    (clr-is System.EnterpriseServices.Internal.ServerWebConfig a))
  (define-method-port
    add-element
    System.EnterpriseServices.Internal.ServerWebConfig
    AddElement
    (System.Void
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String&))
  (define-method-port
    create
    System.EnterpriseServices.Internal.ServerWebConfig
    Create
    (System.Void System.String System.String System.String&)))
