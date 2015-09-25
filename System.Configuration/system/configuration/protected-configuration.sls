(library (system configuration protected-configuration)
  (export is?
          protected-configuration?
          data-protection-provider-name
          protected-data-section-name
          rsa-provider-name
          default-provider
          providers)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.ProtectedConfiguration a))
  (define (protected-configuration? a)
    (clr-is System.Configuration.ProtectedConfiguration a))
  (define-field-port
    data-protection-provider-name
    #f
    #f
    (static:)
    System.Configuration.ProtectedConfiguration
    DataProtectionProviderName
    System.String)
  (define-field-port
    protected-data-section-name
    #f
    #f
    (static:)
    System.Configuration.ProtectedConfiguration
    ProtectedDataSectionName
    System.String)
  (define-field-port
    rsa-provider-name
    #f
    #f
    (static:)
    System.Configuration.ProtectedConfiguration
    RsaProviderName
    System.String)
  (define-field-port
    default-provider
    #f
    #f
    (static: property:)
    System.Configuration.ProtectedConfiguration
    DefaultProvider
    System.String)
  (define-field-port
    providers
    #f
    #f
    (static: property:)
    System.Configuration.ProtectedConfiguration
    Providers
    System.Configuration.ProtectedConfigurationProviderCollection))
