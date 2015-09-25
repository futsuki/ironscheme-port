(library (system enterprise-services internal clr-object-factory)
  (export new
          is?
          clr-object-factory?
          create-from-mailbox
          create-from-wsdl
          create-from-assembly
          create-from-vroot)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.ClrObjectFactory
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.ClrObjectFactory a))
  (define (clr-object-factory? a)
    (clr-is System.EnterpriseServices.Internal.ClrObjectFactory a))
  (define-method-port
    create-from-mailbox
    System.EnterpriseServices.Internal.ClrObjectFactory
    CreateFromMailbox
    (System.Object System.String System.String))
  (define-method-port
    create-from-wsdl
    System.EnterpriseServices.Internal.ClrObjectFactory
    CreateFromWsdl
    (System.Object System.String System.String))
  (define-method-port
    create-from-assembly
    System.EnterpriseServices.Internal.ClrObjectFactory
    CreateFromAssembly
    (System.Object System.String System.String System.String))
  (define-method-port
    create-from-vroot
    System.EnterpriseServices.Internal.ClrObjectFactory
    CreateFromVroot
    (System.Object System.String System.String)))
