(library (system enterprise-services internal com-managed-import-util)
  (export new
          is?
          com-managed-import-util?
          install-assembly
          get-component-info)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.ComManagedImportUtil
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.ComManagedImportUtil a))
  (define (com-managed-import-util? a)
    (clr-is System.EnterpriseServices.Internal.ComManagedImportUtil a))
  (define-method-port
    install-assembly
    System.EnterpriseServices.Internal.ComManagedImportUtil
    InstallAssembly
    (System.Void System.String System.String System.String))
  (define-method-port
    get-component-info
    System.EnterpriseServices.Internal.ComManagedImportUtil
    GetComponentInfo
    (System.Void System.String System.String& System.String&)))
