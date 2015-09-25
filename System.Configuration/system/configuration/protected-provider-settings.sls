(library (system configuration protected-provider-settings)
  (export new is? protected-provider-settings? providers)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ProtectedProviderSettings
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ProtectedProviderSettings a))
  (define (protected-provider-settings? a)
    (clr-is System.Configuration.ProtectedProviderSettings a))
  (define-field-port
    providers
    #f
    #f
    (property:)
    System.Configuration.ProtectedProviderSettings
    Providers
    System.Configuration.ProviderSettingsCollection))
