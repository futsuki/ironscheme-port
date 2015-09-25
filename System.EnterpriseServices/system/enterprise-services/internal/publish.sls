(library (system enterprise-services internal publish)
  (export new
          is?
          publish?
          get-type-name-from-prog-id
          create-mail-box
          process-server-tlb
          create-virtual-root
          get-assembly-name-for-cache
          delete-mail-box
          get-client-physical-path
          process-client-tlb
          gac-remove
          parse-url
          un-register-assembly
          gac-install
          delete-virtual-root
          register-assembly)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.Publish
             a
             ...)))))
  (define (is? a) (clr-is System.EnterpriseServices.Internal.Publish a))
  (define (publish? a)
    (clr-is System.EnterpriseServices.Internal.Publish a))
  (define-method-port
    get-type-name-from-prog-id
    System.EnterpriseServices.Internal.Publish
    GetTypeNameFromProgId
    (System.String System.String System.String))
  (define-method-port
    create-mail-box
    System.EnterpriseServices.Internal.Publish
    CreateMailBox
    (System.Void
      System.String
      System.String
      System.String&
      System.String&
      System.String&
      System.String&))
  (define-method-port
    process-server-tlb
    System.EnterpriseServices.Internal.Publish
    ProcessServerTlb
    (System.Void
      System.String
      System.String
      System.String
      System.String
      System.String&
      System.String&
      System.String&))
  (define-method-port
    create-virtual-root
    System.EnterpriseServices.Internal.Publish
    CreateVirtualRoot
    (System.Void
      System.String
      System.String
      System.String&
      System.String&
      System.String&
      System.String&))
  (define-method-port
    get-assembly-name-for-cache
    System.EnterpriseServices.Internal.Publish
    GetAssemblyNameForCache
    (System.Void System.String System.String&))
  (define-method-port
    delete-mail-box
    System.EnterpriseServices.Internal.Publish
    DeleteMailBox
    (System.Void System.String System.String System.String&))
  (define-method-port
    get-client-physical-path
    System.EnterpriseServices.Internal.Publish
    GetClientPhysicalPath
    (static: System.String System.Boolean))
  (define-method-port
    process-client-tlb
    System.EnterpriseServices.Internal.Publish
    ProcessClientTlb
    (System.Void
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
    gac-remove
    System.EnterpriseServices.Internal.Publish
    GacRemove
    (System.Void System.String))
  (define-method-port
    parse-url
    System.EnterpriseServices.Internal.Publish
    ParseUrl
    (static: System.Void System.String System.String& System.String&))
  (define-method-port
    un-register-assembly
    System.EnterpriseServices.Internal.Publish
    UnRegisterAssembly
    (System.Void System.String))
  (define-method-port
    gac-install
    System.EnterpriseServices.Internal.Publish
    GacInstall
    (System.Void System.String))
  (define-method-port
    delete-virtual-root
    System.EnterpriseServices.Internal.Publish
    DeleteVirtualRoot
    (System.Void System.String System.String System.String&))
  (define-method-port
    register-assembly
    System.EnterpriseServices.Internal.Publish
    RegisterAssembly
    (System.Void System.String)))
