(library (system data common data-column-mapping-collection)
  (export new
          is?
          data-column-mapping-collection?
          copy-to
          get-column-mapping-by-schema-action
          get-data-column
          index-of-data-set-column
          add-range
          get-by-data-set-column
          remove-at
          index-of
          get-enumerator
          add
          contains?
          remove
          insert
          clear
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
             System.Data.Common.DataColumnMappingCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.Common.DataColumnMappingCollection a))
  (define (data-column-mapping-collection? a)
    (clr-is System.Data.Common.DataColumnMappingCollection a))
  (define-method-port
    copy-to
    System.Data.Common.DataColumnMappingCollection
    CopyTo
    (System.Void System.Data.Common.DataColumnMapping[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-method-port
    get-column-mapping-by-schema-action
    System.Data.Common.DataColumnMappingCollection
    GetColumnMappingBySchemaAction
    (static:
      System.Data.Common.DataColumnMapping
      System.Data.Common.DataColumnMappingCollection
      System.String
      System.Data.MissingMappingAction))
  (define-method-port
    get-data-column
    System.Data.Common.DataColumnMappingCollection
    GetDataColumn
    (static:
      System.Data.DataColumn
      System.Data.Common.DataColumnMappingCollection
      System.String
      System.Type
      System.Data.DataTable
      System.Data.MissingMappingAction
      System.Data.MissingSchemaAction))
  (define-method-port
    index-of-data-set-column
    System.Data.Common.DataColumnMappingCollection
    IndexOfDataSetColumn
    (System.Int32 System.String))
  (define-method-port
    add-range
    System.Data.Common.DataColumnMappingCollection
    AddRange
    (System.Void System.Data.Common.DataColumnMapping[])
    (System.Void System.Array))
  (define-method-port
    get-by-data-set-column
    System.Data.Common.DataColumnMappingCollection
    GetByDataSetColumn
    (System.Data.Common.DataColumnMapping System.String))
  (define-method-port
    remove-at
    System.Data.Common.DataColumnMappingCollection
    RemoveAt
    (System.Void System.String)
    (System.Void System.Int32))
  (define-method-port
    index-of
    System.Data.Common.DataColumnMappingCollection
    IndexOf
    (System.Int32 System.String)
    (System.Int32 System.Object))
  (define-method-port
    get-enumerator
    System.Data.Common.DataColumnMappingCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Data.Common.DataColumnMappingCollection
    Add
    (System.Data.Common.DataColumnMapping System.String System.String)
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.Data.Common.DataColumnMappingCollection
    Contains
    (System.Boolean System.String)
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Data.Common.DataColumnMappingCollection
    Remove
    (System.Void System.Data.Common.DataColumnMapping)
    (System.Void System.Object))
  (define-method-port
    insert
    System.Data.Common.DataColumnMappingCollection
    Insert
    (System.Void System.Int32 System.Data.Common.DataColumnMapping)
    (System.Void System.Int32 System.Object))
  (define-method-port
    clear
    System.Data.Common.DataColumnMappingCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.Common.DataColumnMappingCollection
    Count
    System.Int32)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Common.DataColumnMappingCollection
    Item
    System.Data.Common.DataColumnMapping)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Data.Common.DataColumnMappingCollection
    Item
    System.Data.Common.DataColumnMapping))
