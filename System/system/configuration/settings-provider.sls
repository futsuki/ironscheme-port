(library (system configuration settings-provider)
  (export is?
          settings-provider?
          get-property-values
          set-property-values
          application-name-get
          application-name-set!
          application-name-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.SettingsProvider a))
  (define (settings-provider? a)
    (clr-is System.Configuration.SettingsProvider a))
  (define-method-port
    get-property-values
    System.Configuration.SettingsProvider
    GetPropertyValues
    (System.Configuration.SettingsPropertyValueCollection
      System.Configuration.SettingsContext
      System.Configuration.SettingsPropertyCollection))
  (define-method-port
    set-property-values
    System.Configuration.SettingsProvider
    SetPropertyValues
    (System.Void
      System.Configuration.SettingsContext
      System.Configuration.SettingsPropertyValueCollection))
  (define-field-port
    application-name-get
    application-name-set!
    application-name-update!
    (property:)
    System.Configuration.SettingsProvider
    ApplicationName
    System.String))
