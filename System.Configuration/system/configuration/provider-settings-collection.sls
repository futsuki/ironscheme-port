(library (system configuration provider-settings-collection)
  (export new
          is?
          provider-settings-collection?
          add
          remove
          clear
          item-get
          item-set!
          item-update!
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ProviderSettingsCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ProviderSettingsCollection a))
  (define (provider-settings-collection? a)
    (clr-is System.Configuration.ProviderSettingsCollection a))
  (define-method-port
    add
    System.Configuration.ProviderSettingsCollection
    Add
    (System.Void System.Configuration.ProviderSettings))
  (define-method-port
    remove
    System.Configuration.ProviderSettingsCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Configuration.ProviderSettingsCollection
    Clear
    (System.Void))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Configuration.ProviderSettingsCollection
    Item
    System.Configuration.ProviderSettings)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ProviderSettingsCollection
    Item
    System.Configuration.ProviderSettings))
