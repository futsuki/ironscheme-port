(library (system data ole-db ole-db-parameter-collection)
  (export is?
          ole-db-parameter-collection?
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
          add-with-value
          count
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!
          is-fixed-size?
          is-read-only?
          is-synchronized?
          sync-root)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.OleDb.OleDbParameterCollection a))
  (define (ole-db-parameter-collection? a)
    (clr-is System.Data.OleDb.OleDbParameterCollection a))
  (define-method-port
    copy-to
    System.Data.OleDb.OleDbParameterCollection
    CopyTo
    (System.Void System.Data.OleDb.OleDbParameter[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-method-port
    insert
    System.Data.OleDb.OleDbParameterCollection
    Insert
    (System.Void System.Int32 System.Data.OleDb.OleDbParameter)
    (System.Void System.Int32 System.Object))
  (define-method-port
    add-range
    System.Data.OleDb.OleDbParameterCollection
    AddRange
    (System.Void System.Data.OleDb.OleDbParameter[])
    (System.Void System.Array))
  (define-method-port
    remove-at
    System.Data.OleDb.OleDbParameterCollection
    RemoveAt
    (System.Void System.String)
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Data.OleDb.OleDbParameterCollection
    IndexOf
    (System.Int32 System.String)
    (System.Int32 System.Data.OleDb.OleDbParameter)
    (System.Int32 System.Object))
  (define-method-port
    get-enumerator
    System.Data.OleDb.OleDbParameterCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Data.OleDb.OleDbParameterCollection
    Add
    (System.Data.OleDb.OleDbParameter
      System.String
      System.Data.OleDb.OleDbType
      System.Int32
      System.String)
    (System.Data.OleDb.OleDbParameter
      System.String
      System.Data.OleDb.OleDbType
      System.Int32)
    (System.Data.OleDb.OleDbParameter
      System.String
      System.Data.OleDb.OleDbType)
    (System.Data.OleDb.OleDbParameter System.String System.Object)
    (System.Data.OleDb.OleDbParameter System.Data.OleDb.OleDbParameter)
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.Data.OleDb.OleDbParameterCollection
    Contains
    (System.Boolean System.Data.OleDb.OleDbParameter)
    (System.Boolean System.String)
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Data.OleDb.OleDbParameterCollection
    Remove
    (System.Void System.Data.OleDb.OleDbParameter)
    (System.Void System.Object))
  (define-method-port
    clear
    System.Data.OleDb.OleDbParameterCollection
    Clear
    (System.Void))
  (define-method-port
    add-with-value
    System.Data.OleDb.OleDbParameterCollection
    AddWithValue
    (System.Data.OleDb.OleDbParameter System.String System.Object))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbParameterCollection
    Count
    System.Int32)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.OleDb.OleDbParameterCollection
    Item
    System.Data.OleDb.OleDbParameter)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.OleDb.OleDbParameterCollection
    Item
    System.Data.OleDb.OleDbParameter)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbParameterCollection
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbParameterCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbParameterCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbParameterCollection
    SyncRoot
    System.Object))
