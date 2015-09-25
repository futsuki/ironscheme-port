(library (system
          data
          sql-client
          sql-bulk-copy-column-mapping-collection)
  (export is?
          sql-bulk-copy-column-mapping-collection?
          copy-to
          insert
          remove-at
          index-of
          add
          contains?
          remove
          clear
          item)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlBulkCopyColumnMappingCollection a))
  (define (sql-bulk-copy-column-mapping-collection? a)
    (clr-is System.Data.SqlClient.SqlBulkCopyColumnMappingCollection a))
  (define-method-port
    copy-to
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    CopyTo
    (System.Void
      System.Data.SqlClient.SqlBulkCopyColumnMapping[]
      System.Int32))
  (define-method-port
    insert
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    Insert
    (System.Void
      System.Int32
      System.Data.SqlClient.SqlBulkCopyColumnMapping))
  (define-method-port
    remove-at
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    IndexOf
    (System.Int32 System.Data.SqlClient.SqlBulkCopyColumnMapping))
  (define-method-port
    add
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    Add
    (System.Data.SqlClient.SqlBulkCopyColumnMapping
      System.String
      System.String)
    (System.Data.SqlClient.SqlBulkCopyColumnMapping
      System.String
      System.Int32)
    (System.Data.SqlClient.SqlBulkCopyColumnMapping
      System.Int32
      System.String)
    (System.Data.SqlClient.SqlBulkCopyColumnMapping
      System.Int32
      System.Int32)
    (System.Data.SqlClient.SqlBulkCopyColumnMapping
      System.Data.SqlClient.SqlBulkCopyColumnMapping))
  (define-method-port
    contains?
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    Contains
    (System.Boolean System.Data.SqlClient.SqlBulkCopyColumnMapping))
  (define-method-port
    remove
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    Remove
    (System.Void System.Data.SqlClient.SqlBulkCopyColumnMapping))
  (define-method-port
    clear
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    Clear
    (System.Void))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection
    Item
    System.Data.SqlClient.SqlBulkCopyColumnMapping))
