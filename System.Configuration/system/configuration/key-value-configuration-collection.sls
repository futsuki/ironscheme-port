(library (system configuration key-value-configuration-collection)
  (export new
          is?
          key-value-configuration-collection?
          add
          remove
          clear
          all-keys
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.KeyValueConfigurationCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.KeyValueConfigurationCollection a))
  (define (key-value-configuration-collection? a)
    (clr-is System.Configuration.KeyValueConfigurationCollection a))
  (define-method-port
    add
    System.Configuration.KeyValueConfigurationCollection
    Add
    (System.Void System.String System.String)
    (System.Void System.Configuration.KeyValueConfigurationElement))
  (define-method-port
    remove
    System.Configuration.KeyValueConfigurationCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Configuration.KeyValueConfigurationCollection
    Clear
    (System.Void))
  (define-field-port
    all-keys
    #f
    #f
    (property:)
    System.Configuration.KeyValueConfigurationCollection
    AllKeys
    System.String[])
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.KeyValueConfigurationCollection
    Item
    System.Configuration.KeyValueConfigurationElement))
