(library (system configuration machine-configuration-host)
  (export new
          is?
          machine-configuration-host?
          get-stream-name
          init
          is-definition-allowed?
          init-for-configuration)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.MachineConfigurationHost
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.MachineConfigurationHost a))
  (define (machine-configuration-host? a)
    (clr-is System.Configuration.MachineConfigurationHost a))
  (define-method-port
    get-stream-name
    System.Configuration.MachineConfigurationHost
    GetStreamName
    (System.String System.String))
  (define-method-port
    init
    System.Configuration.MachineConfigurationHost
    Init
    (System.Void
      System.Configuration.Internal.IInternalConfigRoot
      System.Object[]))
  (define-method-port
    is-definition-allowed?
    System.Configuration.MachineConfigurationHost
    IsDefinitionAllowed
    (System.Boolean
      System.String
      System.Configuration.ConfigurationAllowDefinition
      System.Configuration.ConfigurationAllowExeDefinition))
  (define-method-port
    init-for-configuration
    System.Configuration.MachineConfigurationHost
    InitForConfiguration
    (System.Void
      System.String&
      System.String&
      System.String&
      System.Configuration.Internal.IInternalConfigRoot
      System.Object[])))
