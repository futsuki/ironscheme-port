(library (system configuration setting-element-collection)
  (export new
          is?
          setting-element-collection?
          get
          add
          remove
          clear
          collection-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.SettingElementCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.SettingElementCollection a))
  (define (setting-element-collection? a)
    (clr-is System.Configuration.SettingElementCollection a))
  (define-method-port
    get
    System.Configuration.SettingElementCollection
    Get
    (System.Configuration.SettingElement System.String))
  (define-method-port
    add
    System.Configuration.SettingElementCollection
    Add
    (System.Void System.Configuration.SettingElement))
  (define-method-port
    remove
    System.Configuration.SettingElementCollection
    Remove
    (System.Void System.Configuration.SettingElement))
  (define-method-port
    clear
    System.Configuration.SettingElementCollection
    Clear
    (System.Void))
  (define-field-port
    collection-type
    #f
    #f
    (property:)
    System.Configuration.SettingElementCollection
    CollectionType
    System.Configuration.ConfigurationElementCollectionType))
