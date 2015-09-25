(library (system configuration configuration-section-collection)
  (export is?
          configuration-section-collection?
          copy-to
          get
          get-object-data
          remove-at
          get-enumerator
          add
          remove
          clear
          get-key
          keys
          count
          item
          item)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationSectionCollection a))
  (define (configuration-section-collection? a)
    (clr-is System.Configuration.ConfigurationSectionCollection a))
  (define-method-port
    copy-to
    System.Configuration.ConfigurationSectionCollection
    CopyTo
    (System.Void
      System.Configuration.ConfigurationSection[]
      System.Int32))
  (define-method-port
    get
    System.Configuration.ConfigurationSectionCollection
    Get
    (System.Configuration.ConfigurationSection System.String)
    (System.Configuration.ConfigurationSection System.Int32))
  (define-method-port
    get-object-data
    System.Configuration.ConfigurationSectionCollection
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    remove-at
    System.Configuration.ConfigurationSectionCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    get-enumerator
    System.Configuration.ConfigurationSectionCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Configuration.ConfigurationSectionCollection
    Add
    (System.Void
      System.String
      System.Configuration.ConfigurationSection))
  (define-method-port
    remove
    System.Configuration.ConfigurationSectionCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Configuration.ConfigurationSectionCollection
    Clear
    (System.Void))
  (define-method-port
    get-key
    System.Configuration.ConfigurationSectionCollection
    GetKey
    (System.String System.Int32))
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionCollection
    Keys
    System.Collections.Specialized.NameObjectCollectionBase+KeysCollection)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionCollection
    Item
    System.Configuration.ConfigurationSection)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionCollection
    Item
    System.Configuration.ConfigurationSection))
