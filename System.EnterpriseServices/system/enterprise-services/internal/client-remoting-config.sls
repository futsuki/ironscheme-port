(library (system enterprise-services internal client-remoting-config)
  (export new is? client-remoting-config? write?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.ClientRemotingConfig
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.ClientRemotingConfig a))
  (define (client-remoting-config? a)
    (clr-is System.EnterpriseServices.Internal.ClientRemotingConfig a))
  (define-method-port
    write?
    System.EnterpriseServices.Internal.ClientRemotingConfig
    Write
    (static:
      System.Boolean
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String
      System.String)))
