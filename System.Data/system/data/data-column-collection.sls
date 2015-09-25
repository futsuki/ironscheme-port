(library (system data data-column-collection)
  (export is?
          data-column-collection?
          remove-at
          can-remove?
          add-range
          index-of
          add
          contains?
          remove
          clear
          copy-to
          item
          item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.DataColumnCollection a))
  (define (data-column-collection? a)
    (clr-is System.Data.DataColumnCollection a))
  (define-method-port
    remove-at
    System.Data.DataColumnCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    can-remove?
    System.Data.DataColumnCollection
    CanRemove
    (System.Boolean System.Data.DataColumn))
  (define-method-port
    add-range
    System.Data.DataColumnCollection
    AddRange
    (System.Void System.Data.DataColumn[]))
  (define-method-port
    index-of
    System.Data.DataColumnCollection
    IndexOf
    (System.Int32 System.String)
    (System.Int32 System.Data.DataColumn))
  (define-method-port
    add
    System.Data.DataColumnCollection
    Add
    (System.Data.DataColumn System.String System.Type System.String)
    (System.Data.DataColumn System.String System.Type)
    (System.Data.DataColumn System.String)
    (System.Void System.Data.DataColumn)
    (System.Data.DataColumn))
  (define-method-port
    contains?
    System.Data.DataColumnCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    remove
    System.Data.DataColumnCollection
    Remove
    (System.Void System.String)
    (System.Void System.Data.DataColumn))
  (define-method-port
    clear
    System.Data.DataColumnCollection
    Clear
    (System.Void))
  (define-method-port
    copy-to
    System.Data.DataColumnCollection
    CopyTo
    (System.Void System.Data.DataColumn[] System.Int32))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataColumnCollection
    Item
    System.Data.DataColumn)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataColumnCollection
    Item
    System.Data.DataColumn))
