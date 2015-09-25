(library (system configuration configuration-lock-collection)
  (export is?
          configuration-lock-collection?
          copy-to
          set-from-list
          get-enumerator
          add
          contains?
          remove
          is-read-only?
          clear
          attribute-list
          count
          has-parent-elements?
          is-modified?
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationLockCollection a))
  (define (configuration-lock-collection? a)
    (clr-is System.Configuration.ConfigurationLockCollection a))
  (define-method-port
    copy-to
    System.Configuration.ConfigurationLockCollection
    CopyTo
    (System.Void System.String[] System.Int32))
  (define-method-port
    set-from-list
    System.Configuration.ConfigurationLockCollection
    SetFromList
    (System.Void System.String))
  (define-method-port
    get-enumerator
    System.Configuration.ConfigurationLockCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Configuration.ConfigurationLockCollection
    Add
    (System.Void System.String))
  (define-method-port
    contains?
    System.Configuration.ConfigurationLockCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    remove
    System.Configuration.ConfigurationLockCollection
    Remove
    (System.Void System.String))
  (define-method-port
    is-read-only?
    System.Configuration.ConfigurationLockCollection
    IsReadOnly
    (System.Boolean System.String))
  (define-method-port
    clear
    System.Configuration.ConfigurationLockCollection
    Clear
    (System.Void))
  (define-field-port
    attribute-list
    #f
    #f
    (property:)
    System.Configuration.ConfigurationLockCollection
    AttributeList
    System.String)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Configuration.ConfigurationLockCollection
    Count
    System.Int32)
  (define-field-port
    has-parent-elements?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationLockCollection
    HasParentElements
    System.Boolean)
  (define-field-port
    is-modified?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationLockCollection
    IsModified
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Configuration.ConfigurationLockCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Configuration.ConfigurationLockCollection
    SyncRoot
    System.Object))
