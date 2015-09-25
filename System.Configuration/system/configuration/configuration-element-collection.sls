(library (system configuration configuration-element-collection)
  (export is?
          configuration-element-collection?
          get-hash-code
          get-enumerator
          is-read-only?
          copy-to
          equals?
          collection-type
          count
          emit-clear?-get
          emit-clear?-set!
          emit-clear?-update!
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationElementCollection a))
  (define (configuration-element-collection? a)
    (clr-is System.Configuration.ConfigurationElementCollection a))
  (define-method-port
    get-hash-code
    System.Configuration.ConfigurationElementCollection
    GetHashCode
    (System.Int32))
  (define-method-port
    get-enumerator
    System.Configuration.ConfigurationElementCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    is-read-only?
    System.Configuration.ConfigurationElementCollection
    IsReadOnly
    (System.Boolean))
  (define-method-port
    copy-to
    System.Configuration.ConfigurationElementCollection
    CopyTo
    (System.Void
      System.Configuration.ConfigurationElement[]
      System.Int32))
  (define-method-port
    equals?
    System.Configuration.ConfigurationElementCollection
    Equals
    (System.Boolean System.Object))
  (define-field-port
    collection-type
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElementCollection
    CollectionType
    System.Configuration.ConfigurationElementCollectionType)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElementCollection
    Count
    System.Int32)
  (define-field-port
    emit-clear?-get
    emit-clear?-set!
    emit-clear?-update!
    (property:)
    System.Configuration.ConfigurationElementCollection
    EmitClear
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElementCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Configuration.ConfigurationElementCollection
    SyncRoot
    System.Object))
