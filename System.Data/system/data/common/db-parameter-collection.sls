(library (system data common db-parameter-collection)
  (export is?
          db-parameter-collection?
          copy-to
          insert
          add-range
          remove-at
          index-of
          get-enumerator
          add
          contains?
          remove
          clear
          count
          is-fixed-size?
          is-read-only?
          is-synchronized?
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbParameterCollection a))
  (define (db-parameter-collection? a)
    (clr-is System.Data.Common.DbParameterCollection a))
  (define-method-port
    copy-to
    System.Data.Common.DbParameterCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    insert
    System.Data.Common.DbParameterCollection
    Insert
    (System.Void System.Int32 System.Object))
  (define-method-port
    add-range
    System.Data.Common.DbParameterCollection
    AddRange
    (System.Void System.Array))
  (define-method-port
    remove-at
    System.Data.Common.DbParameterCollection
    RemoveAt
    (System.Void System.String)
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Data.Common.DbParameterCollection
    IndexOf
    (System.Int32 System.String)
    (System.Int32 System.Object))
  (define-method-port
    get-enumerator
    System.Data.Common.DbParameterCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Data.Common.DbParameterCollection
    Add
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.Data.Common.DbParameterCollection
    Contains
    (System.Boolean System.String)
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Data.Common.DbParameterCollection
    Remove
    (System.Void System.Object))
  (define-method-port
    clear
    System.Data.Common.DbParameterCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.Common.DbParameterCollection
    Count
    System.Int32)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Data.Common.DbParameterCollection
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.Common.DbParameterCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Data.Common.DbParameterCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Common.DbParameterCollection
    Item
    System.Data.Common.DbParameter)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Common.DbParameterCollection
    Item
    System.Data.Common.DbParameter)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Data.Common.DbParameterCollection
    SyncRoot
    System.Object))
