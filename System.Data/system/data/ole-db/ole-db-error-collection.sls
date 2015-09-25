(library (system data ole-db ole-db-error-collection)
  (export is?
          ole-db-error-collection?
          get-enumerator
          copy-to
          count
          item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.OleDb.OleDbErrorCollection a))
  (define (ole-db-error-collection? a)
    (clr-is System.Data.OleDb.OleDbErrorCollection a))
  (define-method-port
    get-enumerator
    System.Data.OleDb.OleDbErrorCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Data.OleDb.OleDbErrorCollection
    CopyTo
    (System.Void System.Data.OleDb.OleDbError[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbErrorCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbErrorCollection
    Item
    System.Data.OleDb.OleDbError))
