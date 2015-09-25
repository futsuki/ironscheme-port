(library (system configuration configuration-manager)
  (export is?
          configuration-manager?
          open-exe-configuration
          open-mapped-exe-configuration
          get-section
          open-mapped-machine-configuration
          refresh-section
          open-machine-configuration
          app-settings
          connection-strings)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.ConfigurationManager a))
  (define (configuration-manager? a)
    (clr-is System.Configuration.ConfigurationManager a))
  (define-method-port
    open-exe-configuration
    System.Configuration.ConfigurationManager
    OpenExeConfiguration
    (static: System.Configuration.Configuration System.String)
    (static:
      System.Configuration.Configuration
      System.Configuration.ConfigurationUserLevel))
  (define-method-port
    open-mapped-exe-configuration
    System.Configuration.ConfigurationManager
    OpenMappedExeConfiguration
    (static:
      System.Configuration.Configuration
      System.Configuration.ExeConfigurationFileMap
      System.Configuration.ConfigurationUserLevel))
  (define-method-port
    get-section
    System.Configuration.ConfigurationManager
    GetSection
    (static: System.Object System.String))
  (define-method-port
    open-mapped-machine-configuration
    System.Configuration.ConfigurationManager
    OpenMappedMachineConfiguration
    (static:
      System.Configuration.Configuration
      System.Configuration.ConfigurationFileMap))
  (define-method-port
    refresh-section
    System.Configuration.ConfigurationManager
    RefreshSection
    (static: System.Void System.String))
  (define-method-port
    open-machine-configuration
    System.Configuration.ConfigurationManager
    OpenMachineConfiguration
    (static: System.Configuration.Configuration))
  (define-field-port
    app-settings
    #f
    #f
    (static: property:)
    System.Configuration.ConfigurationManager
    AppSettings
    System.Collections.Specialized.NameValueCollection)
  (define-field-port
    connection-strings
    #f
    #f
    (static: property:)
    System.Configuration.ConfigurationManager
    ConnectionStrings
    System.Configuration.ConnectionStringSettingsCollection))
