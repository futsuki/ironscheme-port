(library (system data data-row-collection)
  (export is?
          data-row-collection?
          remove-at
          find
          copy-to
          insert-at
          index-of
          get-enumerator
          add
          contains?
          remove
          clear
          item
          count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.DataRowCollection a))
  (define (data-row-collection? a)
    (clr-is System.Data.DataRowCollection a))
  (define-method-port
    remove-at
    System.Data.DataRowCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    find
    System.Data.DataRowCollection
    Find
    (System.Data.DataRow System.Object[])
    (System.Data.DataRow System.Object))
  (define-method-port
    copy-to
    System.Data.DataRowCollection
    CopyTo
    (System.Void System.Array System.Int32)
    (System.Void System.Data.DataRow[] System.Int32))
  (define-method-port
    insert-at
    System.Data.DataRowCollection
    InsertAt
    (System.Void System.Data.DataRow System.Int32))
  (define-method-port
    index-of
    System.Data.DataRowCollection
    IndexOf
    (System.Int32 System.Data.DataRow))
  (define-method-port
    get-enumerator
    System.Data.DataRowCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Data.DataRowCollection
    Add
    (System.Data.DataRow System.Object[])
    (System.Void System.Data.DataRow))
  (define-method-port
    contains?
    System.Data.DataRowCollection
    Contains
    (System.Boolean System.Object[])
    (System.Boolean System.Object))
  (define-method-port
    remove
    System.Data.DataRowCollection
    Remove
    (System.Void System.Data.DataRow))
  (define-method-port
    clear
    System.Data.DataRowCollection
    Clear
    (System.Void))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataRowCollection
    Item
    System.Data.DataRow)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.DataRowCollection
    Count
    System.Int32))
