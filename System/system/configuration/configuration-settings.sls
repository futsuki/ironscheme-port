(library (system configuration configuration-settings)
  (export is? configuration-settings? get-config app-settings)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.ConfigurationSettings a))
  (define (configuration-settings? a)
    (clr-is System.Configuration.ConfigurationSettings a))
  (define-method-port
    get-config
    System.Configuration.ConfigurationSettings
    GetConfig
    (static: System.Object System.String))
  (define-field-port
    app-settings
    #f
    #f
    (static: property:)
    System.Configuration.ConfigurationSettings
    AppSettings
    System.Collections.Specialized.NameValueCollection))
