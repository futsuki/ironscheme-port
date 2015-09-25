(library (system configuration app-settings-section)
  (export new
          is?
          app-settings-section?
          file-get
          file-set!
          file-update!
          settings)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.AppSettingsSection a ...)))))
  (define (is? a) (clr-is System.Configuration.AppSettingsSection a))
  (define (app-settings-section? a)
    (clr-is System.Configuration.AppSettingsSection a))
  (define-field-port
    file-get
    file-set!
    file-update!
    (property:)
    System.Configuration.AppSettingsSection
    File
    System.String)
  (define-field-port
    settings
    #f
    #f
    (property:)
    System.Configuration.AppSettingsSection
    Settings
    System.Configuration.KeyValueConfigurationCollection))
