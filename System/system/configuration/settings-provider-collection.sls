(library (system configuration settings-provider-collection)
  (export new is? settings-provider-collection? add item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingsProviderCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingsProviderCollection a))
  (define (settings-provider-collection? a)
    (clr-is System.Configuration.SettingsProviderCollection a))
  (define-method-port
    add
    System.Configuration.SettingsProviderCollection
    Add
    (System.Void System.Configuration.Provider.ProviderBase))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.SettingsProviderCollection
    Item
    System.Configuration.SettingsProvider))
