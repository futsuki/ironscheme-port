(library (system data data-table-collection)
  (export is?
          data-table-collection?
          remove-at
          can-remove?
          copy-to
          add-range
          index-of
          add
          contains?
          remove
          clear
          item
          item
          item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.DataTableCollection a))
  (define (data-table-collection? a)
    (clr-is System.Data.DataTableCollection a))
  (define-method-port
    remove-at
    System.Data.DataTableCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    can-remove?
    System.Data.DataTableCollection
    CanRemove
    (System.Boolean System.Data.DataTable))
  (define-method-port
    copy-to
    System.Data.DataTableCollection
    CopyTo
    (System.Void System.Data.DataTable[] System.Int32))
  (define-method-port
    add-range
    System.Data.DataTableCollection
    AddRange
    (System.Void System.Data.DataTable[]))
  (define-method-port
    index-of
    System.Data.DataTableCollection
    IndexOf
    (System.Int32 System.String System.String)
    (System.Int32 System.String)
    (System.Int32 System.Data.DataTable))
  (define-method-port
    add
    System.Data.DataTableCollection
    Add
    (System.Data.DataTable System.String System.String)
    (System.Data.DataTable System.String)
    (System.Void System.Data.DataTable)
    (System.Data.DataTable))
  (define-method-port
    contains?
    System.Data.DataTableCollection
    Contains
    (System.Boolean System.String System.String)
    (System.Boolean System.String))
  (define-method-port
    remove
    System.Data.DataTableCollection
    Remove
    (System.Void System.String System.String)
    (System.Void System.String)
    (System.Void System.Data.DataTable))
  (define-method-port
    clear
    System.Data.DataTableCollection
    Clear
    (System.Void))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataTableCollection
    Item
    System.Data.DataTable)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataTableCollection
    Item
    System.Data.DataTable)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataTableCollection
    Item
    System.Data.DataTable))
