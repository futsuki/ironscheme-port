(library (system enterprise-services internal iisvirtual-root)
  (export new is? iisvirtual-root? delete create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.IISVirtualRoot
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.IISVirtualRoot a))
  (define (iisvirtual-root? a)
    (clr-is System.EnterpriseServices.Internal.IISVirtualRoot a))
  (define-method-port
    delete
    System.EnterpriseServices.Internal.IISVirtualRoot
    Delete
    (System.Void
      System.String
      System.String
      System.String
      System.String&))
  (define-method-port
    create
    System.EnterpriseServices.Internal.IISVirtualRoot
    Create
    (System.Void
      System.String
      System.String
      System.String
      System.String&)))
