(library (system configuration settings-provider-attribute)
  (export new is? settings-provider-attribute? provider-type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsProviderAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsProviderAttribute a))
  (define (settings-provider-attribute? a)
    (clr-is System.Configuration.SettingsProviderAttribute a))
  (define-field-port
    provider-type-name
    #f
    #f
    (property:)
    System.Configuration.SettingsProviderAttribute
    ProviderTypeName
    System.String))
