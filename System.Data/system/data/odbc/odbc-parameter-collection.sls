(library (system data odbc odbc-parameter-collection)
  (export is?
          odbc-parameter-collection?
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
  (define (is? a) (clr-is System.Data.Odbc.OdbcParameterCollection a))
  (define (odbc-parameter-collection? a)
    (clr-is System.Data.Odbc.OdbcParameterCollection a))
  (define-method-port
    copy-to
    System.Data.Odbc.OdbcParameterCollection
    CopyTo
    (System.Void System.Data.Odbc.OdbcParameter[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-method-port
    insert
    System.Data.Odbc.OdbcParameterCollection
    Insert
    (System.Void System.Int32 System.Data.Odbc.OdbcParameter)
    (System.Void System.Int32 System.Object))
  (define-method-port
    add-range
    System.Data.Odbc.OdbcParameterCollection
    AddRange
    (System.Void System.Data.Odbc.OdbcParameter[])
    (System.Void System.Array))
  (define-method-port
    remove-at
    System.Data.Odbc.OdbcParameterCollection
    RemoveAt
    (System.Void System.String)
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Data.Odbc.OdbcParameterCollection
    IndexOf
    (System.Int32 System.Data.Odbc.OdbcParameter)
    (System.Int32 System.String)
    (System.Int32 System.Object))
  (define-method-port
    get-enumerator
    System.Data.Odbc.OdbcParameterCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Data.Odbc.OdbcParameterCollection
    Add
    (System.Data.Odbc.OdbcParameter
      System.String
      System.Data.Odbc.OdbcType
      System.Int32
      System.String)
    (System.Data.Odbc.OdbcParameter
      System.String
      System.Data.Odbc.OdbcType
      System.Int32)
    (System.Data.Odbc.OdbcParameter
      System.String
      System.Data.Odbc.OdbcType)
    (System.Data.Odbc.OdbcParameter System.String System.Object)
    (System.Data.Odbc.OdbcParameter System.Data.Odbc.OdbcParameter)
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.Data.Odbc.OdbcParameterCollection
    Contains
    (System.Boolean System.Data.Odbc.OdbcParameter)
    (System.Boolean System.String)
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Data.Odbc.OdbcParameterCollection
    Remove
    (System.Void System.Data.Odbc.OdbcParameter)
    (System.Void System.Object))
  (define-method-port
    clear
    System.Data.Odbc.OdbcParameterCollection
    Clear
    (System.Void))
  (define-method-port
    add-with-value
    System.Data.Odbc.OdbcParameterCollection
    AddWithValue
    (System.Data.Odbc.OdbcParameter System.String System.Object))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcParameterCollection
    Count
    System.Int32)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Odbc.OdbcParameterCollection
    Item
    System.Data.Odbc.OdbcParameter)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Odbc.OdbcParameterCollection
    Item
    System.Data.Odbc.OdbcParameter)
  (define-field-port
    is-fixed-size?
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcParameterCollection
    IsFixedSize
    System.Boolean)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcParameterCollection
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-synchronized?
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcParameterCollection
    IsSynchronized
    System.Boolean)
  (define-field-port
    sync-root
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcParameterCollection
    SyncRoot
    System.Object))
