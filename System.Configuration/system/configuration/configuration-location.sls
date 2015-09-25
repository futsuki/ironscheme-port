(library (system configuration configuration-location)
  (export is? configuration-location? open-configuration path)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.ConfigurationLocation a))
  (define (configuration-location? a)
    (clr-is System.Configuration.ConfigurationLocation a))
  (define-method-port
    open-configuration
    System.Configuration.ConfigurationLocation
    OpenConfiguration
    (System.Configuration.Configuration))
  (define-field-port
    path
    #f
    #f
    (property:)
    System.Configuration.ConfigurationLocation
    Path
    System.String))
