(library (system configuration connection-string-settings-collection)
  (export new
          is?
          connection-string-settings-collection?
          remove-at
          index-of
          add
          remove
          clear
          item
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConnectionStringSettingsCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConnectionStringSettingsCollection a))
  (define (connection-string-settings-collection? a)
    (clr-is System.Configuration.ConnectionStringSettingsCollection a))
  (define-method-port
    remove-at
    System.Configuration.ConnectionStringSettingsCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Configuration.ConnectionStringSettingsCollection
    IndexOf
    (System.Int32 System.Configuration.ConnectionStringSettings))
  (define-method-port
    add
    System.Configuration.ConnectionStringSettingsCollection
    Add
    (System.Void System.Configuration.ConnectionStringSettings))
  (define-method-port
    remove
    System.Configuration.ConnectionStringSettingsCollection
    Remove
    (System.Void System.String)
    (System.Void System.Configuration.ConnectionStringSettings))
  (define-method-port
    clear
    System.Configuration.ConnectionStringSettingsCollection
    Clear
    (System.Void))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ConnectionStringSettingsCollection
    Item
    System.Configuration.ConnectionStringSettings)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Configuration.ConnectionStringSettingsCollection
    Item
    System.Configuration.ConnectionStringSettings))
