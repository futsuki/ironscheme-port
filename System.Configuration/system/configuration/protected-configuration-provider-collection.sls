(library (system
          configuration
          protected-configuration-provider-collection)
  (export new is? protected-configuration-provider-collection? add item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ProtectedConfigurationProviderCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Configuration.ProtectedConfigurationProviderCollection
      a))
  (define (protected-configuration-provider-collection? a)
    (clr-is
      System.Configuration.ProtectedConfigurationProviderCollection
      a))
  (define-method-port
    add
    System.Configuration.ProtectedConfigurationProviderCollection
    Add
    (System.Void System.Configuration.Provider.ProviderBase))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ProtectedConfigurationProviderCollection
    Item
    System.Configuration.ProtectedConfigurationProvider))
