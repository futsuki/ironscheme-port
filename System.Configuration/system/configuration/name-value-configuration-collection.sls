(library (system configuration name-value-configuration-collection)
  (export new
          is?
          name-value-configuration-collection?
          add
          remove
          clear
          all-keys
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.NameValueConfigurationCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.NameValueConfigurationCollection a))
  (define (name-value-configuration-collection? a)
    (clr-is System.Configuration.NameValueConfigurationCollection a))
  (define-method-port
    add
    System.Configuration.NameValueConfigurationCollection
    Add
    (System.Void System.Configuration.NameValueConfigurationElement))
  (define-method-port
    remove
    System.Configuration.NameValueConfigurationCollection
    Remove
    (System.Void System.String)
    (System.Void System.Configuration.NameValueConfigurationElement))
  (define-method-port
    clear
    System.Configuration.NameValueConfigurationCollection
    Clear
    (System.Void))
  (define-field-port
    all-keys
    #f
    #f
    (property:)
    System.Configuration.NameValueConfigurationCollection
    AllKeys
    System.String[])
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Configuration.NameValueConfigurationCollection
    Item
    System.Configuration.NameValueConfigurationElement))
