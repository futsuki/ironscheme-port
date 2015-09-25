(library (system configuration client-settings-section)
  (export new is? client-settings-section? settings)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ClientSettingsSection
             a
             ...)))))
  (define (is? a) (clr-is System.Configuration.ClientSettingsSection a))
  (define (client-settings-section? a)
    (clr-is System.Configuration.ClientSettingsSection a))
  (define-field-port
    settings
    #f
    #f
    (property:)
    System.Configuration.ClientSettingsSection
    Settings
    System.Configuration.SettingElementCollection))
