(library (system configuration provider provider-base)
  (export is? provider-base? initialize name description)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.Provider.ProviderBase a))
  (define (provider-base? a)
    (clr-is System.Configuration.Provider.ProviderBase a))
  (define-method-port
    initialize
    System.Configuration.Provider.ProviderBase
    Initialize
    (System.Void
      System.String
      System.Collections.Specialized.NameValueCollection))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Configuration.Provider.ProviderBase
    Name
    System.String)
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Configuration.Provider.ProviderBase
    Description
    System.String))
