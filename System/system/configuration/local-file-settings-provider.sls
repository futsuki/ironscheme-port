(library (system configuration local-file-settings-provider)
  (export new
          is?
          local-file-settings-provider?
          get-property-values
          get-previous-version
          initialize
          set-property-values
          reset
          upgrade
          application-name-get
          application-name-set!
          application-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.LocalFileSettingsProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.LocalFileSettingsProvider a))
  (define (local-file-settings-provider? a)
    (clr-is System.Configuration.LocalFileSettingsProvider a))
  (define-method-port
    get-property-values
    System.Configuration.LocalFileSettingsProvider
    GetPropertyValues
    (System.Configuration.SettingsPropertyValueCollection
      System.Configuration.SettingsContext
      System.Configuration.SettingsPropertyCollection))
  (define-method-port
    get-previous-version
    System.Configuration.LocalFileSettingsProvider
    GetPreviousVersion
    (System.Configuration.SettingsPropertyValue
      System.Configuration.SettingsContext
      System.Configuration.SettingsProperty))
  (define-method-port
    initialize
    System.Configuration.LocalFileSettingsProvider
    Initialize
    (System.Void
      System.String
      System.Collections.Specialized.NameValueCollection))
  (define-method-port
    set-property-values
    System.Configuration.LocalFileSettingsProvider
    SetPropertyValues
    (System.Void
      System.Configuration.SettingsContext
      System.Configuration.SettingsPropertyValueCollection))
  (define-method-port
    reset
    System.Configuration.LocalFileSettingsProvider
    Reset
    (System.Void System.Configuration.SettingsContext))
  (define-method-port
    upgrade
    System.Configuration.LocalFileSettingsProvider
    Upgrade
    (System.Void
      System.Configuration.SettingsContext
      System.Configuration.SettingsPropertyCollection))
  (define-field-port
    application-name-get
    application-name-set!
    application-name-update!
    (property:)
    System.Configuration.LocalFileSettingsProvider
    ApplicationName
    System.String))
