(library (system data sql-client sql-parameter-collection)
  (export is?
          sql-parameter-collection?
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
          is-fixed-size?
          is-read-only?
          is-synchronized?
          sync-root
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlParameterCollection a))
  (define (sql-parameter-collection? a)
    (clr-is System.Data.SqlClient.SqlParameterCollection a))
  (define-method-port
    copy-to
    System.Data.SqlClient.SqlParameterCollection
    CopyTo
    (System.Void System.Data.SqlClient.SqlParameter[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-method-port
    insert
    System.Data.SqlClient.SqlParameterCollection
    Insert
    (System.Void System.Int32 System.Data.SqlClient.SqlParameter)
    (System.Void System.Int32 System.Object))
  (define-method-port
    add-range
    System.Data.SqlClient.SqlParameterCollection
    AddRange
    (System.Void System.Data.SqlClient.SqlParameter[])
    (System.Void System.Array))
  (define-method-port
    remove-at
    System.Data.SqlClient.SqlParameterCollection
    RemoveAt
    (System.Void System.String)
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Data.SqlClient.SqlParameterCollection
    IndexOf
    (System.Int32 System.Data.SqlClient.SqlParameter)
    (System.Int32 System.String)
    (System.Int32 System.Object))
  (define-method-port
    get-enumerator
    System.Data.SqlClient.SqlParameterCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Data.SqlClient.SqlParameterCollection
    Add
    (System.Data.SqlClient.SqlParameter
      System.String
      System.Data.SqlDbType
      System.Int32
      System.String)
    (System.Data.SqlClient.SqlParameter
      System.String
      System.Data.SqlDbType
      System.Int32)
    (System.Data.SqlClient.SqlParameter
      System.String
      System.Data.SqlDbType)
    (System.Data.SqlClient.SqlParameter System.String System.Object)
    (System.Data.SqlClient.SqlParameter
      System.Data.SqlClient.SqlParameter)
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.Data.SqlClient.SqlParameterCollection
    Contains
    (System.Boolean System.Data.SqlClient.SqlParameter)
    (System.Boolean System.String)
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Data.SqlClient.SqlParameterCollection
    Remove
    (System.Void System.Data.SqlClient.SqlParameter)
    (System.Void System.Object))
  (define-method-port
    clear
    System.Data.SqlClient.SqlParameterCollection
    Clear
    (System.Void))
  (define-method-port
    add-with-value
    System.Data.SqlClient.SqlParameterCollection
    AddWithValue
    (System.Data.SqlClient.SqlParameter System.String System.Object))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlParameterCollection
    Count
    System.Int32)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlParameterCollection
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlParameterCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlParameterCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlParameterCollection
    SyncRoot
    System.Object)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.SqlClient.SqlParameterCollection
    Item
    System.Data.SqlClient.SqlParameter)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.SqlClient.SqlParameterCollection
    Item
    System.Data.SqlClient.SqlParameter))
