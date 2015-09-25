(library (system app-domain-manager)
  (export new
          is?
          app-domain-manager?
          check-security-settings?
          create-domain
          initialize-new-domain
          application-activator
          entry-assembly
          host-execution-context-manager
          host-security-manager
          initialization-flags-get
          initialization-flags-set!
          initialization-flags-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.AppDomainManager a ...)))))
  (define (is? a) (clr-is System.AppDomainManager a))
  (define (app-domain-manager? a) (clr-is System.AppDomainManager a))
  (define-method-port
    check-security-settings?
    System.AppDomainManager
    CheckSecuritySettings
    (System.Boolean System.Security.SecurityState))
  (define-method-port
    create-domain
    System.AppDomainManager
    CreateDomain
    (System.AppDomain
      System.String
      System.Security.Policy.Evidence
      System.AppDomainSetup))
  (define-method-port
    initialize-new-domain
    System.AppDomainManager
    InitializeNewDomain
    (System.Void System.AppDomainSetup))
  (define-field-port
    application-activator
    #f
    #f
    (property:)
    System.AppDomainManager
    ApplicationActivator
    System.Runtime.Hosting.ApplicationActivator)
  (define-field-port
    entry-assembly
    #f
    #f
    (property:)
    System.AppDomainManager
    EntryAssembly
    System.Reflection.Assembly)
  (define-field-port
    host-execution-context-manager
    #f
    #f
    (property:)
    System.AppDomainManager
    HostExecutionContextManager
    System.Threading.HostExecutionContextManager)
  (define-field-port
    host-security-manager
    #f
    #f
    (property:)
    System.AppDomainManager
    HostSecurityManager
    System.Security.HostSecurityManager)
  (define-field-port
    initialization-flags-get
    initialization-flags-set!
    initialization-flags-update!
    (property:)
    System.AppDomainManager
    InitializationFlags
    System.AppDomainManagerInitializationOptions))
