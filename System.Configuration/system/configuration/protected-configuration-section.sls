(library (system configuration protected-configuration-section)
  (export new
          is?
          protected-configuration-section?
          default-provider-get
          default-provider-set!
          default-provider-update!
          providers)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ProtectedConfigurationSection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ProtectedConfigurationSection a))
  (define (protected-configuration-section? a)
    (clr-is System.Configuration.ProtectedConfigurationSection a))
  (define-field-port
    default-provider-get
    default-provider-set!
    default-provider-update!
    (property:)
    System.Configuration.ProtectedConfigurationSection
    DefaultProvider
    System.String)
  (define-field-port
    providers
    #f
    #f
    (property:)
    System.Configuration.ProtectedConfigurationSection
    Providers
    System.Configuration.ProviderSettingsCollection))
