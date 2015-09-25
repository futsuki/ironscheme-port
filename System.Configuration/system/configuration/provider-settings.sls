(library (system configuration provider-settings)
  (export new
          is?
          provider-settings?
          name-get
          name-set!
          name-update!
          type-get
          type-set!
          type-update!
          parameters)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.ProviderSettings a ...)))))
  (define (is? a) (clr-is System.Configuration.ProviderSettings a))
  (define (provider-settings? a)
    (clr-is System.Configuration.ProviderSettings a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Configuration.ProviderSettings
    Name
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Configuration.ProviderSettings
    Type
    System.String)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.Configuration.ProviderSettings
    Parameters
    System.Collections.Specialized.NameValueCollection))
