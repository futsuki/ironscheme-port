(library (system configuration configuration-section-group-collection)
  (export is?
          configuration-section-group-collection?
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
    (clr-is System.Configuration.ConfigurationSectionGroupCollection a))
  (define (configuration-section-group-collection? a)
    (clr-is System.Configuration.ConfigurationSectionGroupCollection a))
  (define-method-port
    copy-to
    System.Configuration.ConfigurationSectionGroupCollection
    CopyTo
    (System.Void
      System.Configuration.ConfigurationSectionGroup[]
      System.Int32))
  (define-method-port
    get
    System.Configuration.ConfigurationSectionGroupCollection
    Get
    (System.Configuration.ConfigurationSectionGroup System.String)
    (System.Configuration.ConfigurationSectionGroup System.Int32))
  (define-method-port
    get-object-data
    System.Configuration.ConfigurationSectionGroupCollection
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    remove-at
    System.Configuration.ConfigurationSectionGroupCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    get-enumerator
    System.Configuration.ConfigurationSectionGroupCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Configuration.ConfigurationSectionGroupCollection
    Add
    (System.Void
      System.String
      System.Configuration.ConfigurationSectionGroup))
  (define-method-port
    remove
    System.Configuration.ConfigurationSectionGroupCollection
    Remove
    (System.Void System.String))
  (define-method-port
    clear
    System.Configuration.ConfigurationSectionGroupCollection
    Clear
    (System.Void))
  (define-method-port
    get-key
    System.Configuration.ConfigurationSectionGroupCollection
    GetKey
    (System.String System.Int32))
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroupCollection
    Keys
    System.Collections.Specialized.NameObjectCollectionBase+KeysCollection)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroupCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroupCollection
    Item
    System.Configuration.ConfigurationSectionGroup)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.ConfigurationSectionGroupCollection
    Item
    System.Configuration.ConfigurationSectionGroup))
