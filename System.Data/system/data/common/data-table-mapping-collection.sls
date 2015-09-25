(library (system data common data-table-mapping-collection)
  (export new
          is?
          data-table-mapping-collection?
          copy-to
          index-of-data-set-table
          insert
          add-range
          remove-at
          index-of
          get-enumerator
          get-table-mapping-by-schema-action
          add
          contains?
          remove
          clear
          get-by-data-set-table
          count
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.Common.DataTableMappingCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.Common.DataTableMappingCollection a))
  (define (data-table-mapping-collection? a)
    (clr-is System.Data.Common.DataTableMappingCollection a))
  (define-method-port
    copy-to
    System.Data.Common.DataTableMappingCollection
    CopyTo
    (System.Void System.Data.Common.DataTableMapping[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-method-port
    index-of-data-set-table
    System.Data.Common.DataTableMappingCollection
    IndexOfDataSetTable
    (System.Int32 System.String))
  (define-method-port
    insert
    System.Data.Common.DataTableMappingCollection
    Insert
    (System.Void System.Int32 System.Data.Common.DataTableMapping)
    (System.Void System.Int32 System.Object))
  (define-method-port
    add-range
    System.Data.Common.DataTableMappingCollection
    AddRange
    (System.Void System.Data.Common.DataTableMapping[])
    (System.Void System.Array))
  (define-method-port
    remove-at
    System.Data.Common.DataTableMappingCollection
    RemoveAt
    (System.Void System.String)
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Data.Common.DataTableMappingCollection
    IndexOf
    (System.Int32 System.String)
    (System.Int32 System.Object))
  (define-method-port
    get-enumerator
    System.Data.Common.DataTableMappingCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-table-mapping-by-schema-action
    System.Data.Common.DataTableMappingCollection
    GetTableMappingBySchemaAction
    (static:
      System.Data.Common.DataTableMapping
      System.Data.Common.DataTableMappingCollection
      System.String
      System.String
      System.Data.MissingMappingAction))
  (define-method-port
    add
    System.Data.Common.DataTableMappingCollection
    Add
    (System.Data.Common.DataTableMapping System.String System.String)
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.Data.Common.DataTableMappingCollection
    Contains
    (System.Boolean System.String)
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Data.Common.DataTableMappingCollection
    Remove
    (System.Void System.Data.Common.DataTableMapping)
    (System.Void System.Object))
  (define-method-port
    clear
    System.Data.Common.DataTableMappingCollection
    Clear
    (System.Void))
  (define-method-port
    get-by-data-set-table
    System.Data.Common.DataTableMappingCollection
    GetByDataSetTable
    (System.Data.Common.DataTableMapping System.String))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.Common.DataTableMappingCollection
    Count
    System.Int32)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Common.DataTableMappingCollection
    Item
    System.Data.Common.DataTableMapping)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Common.DataTableMappingCollection
    Item
    System.Data.Common.DataTableMapping))
