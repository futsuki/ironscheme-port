(library (system configuration configuration-collection-attribute)
  (export new
          is?
          configuration-collection-attribute?
          add-item-name-get
          add-item-name-set!
          add-item-name-update!
          clear-items-name-get
          clear-items-name-set!
          clear-items-name-update!
          remove-item-name-get
          remove-item-name-set!
          remove-item-name-update!
          collection-type-get
          collection-type-set!
          collection-type-update!
          item-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationCollectionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationCollectionAttribute a))
  (define (configuration-collection-attribute? a)
    (clr-is System.Configuration.ConfigurationCollectionAttribute a))
  (define-field-port
    add-item-name-get
    add-item-name-set!
    add-item-name-update!
    (property:)
    System.Configuration.ConfigurationCollectionAttribute
    AddItemName
    System.String)
  (define-field-port
    clear-items-name-get
    clear-items-name-set!
    clear-items-name-update!
    (property:)
    System.Configuration.ConfigurationCollectionAttribute
    ClearItemsName
    System.String)
  (define-field-port
    remove-item-name-get
    remove-item-name-set!
    remove-item-name-update!
    (property:)
    System.Configuration.ConfigurationCollectionAttribute
    RemoveItemName
    System.String)
  (define-field-port
    collection-type-get
    collection-type-set!
    collection-type-update!
    (property:)
    System.Configuration.ConfigurationCollectionAttribute
    CollectionType
    System.Configuration.ConfigurationElementCollectionType)
  (define-field-port
    item-type
    #f
    #f
    (property:)
    System.Configuration.ConfigurationCollectionAttribute
    ItemType
    System.Type))
