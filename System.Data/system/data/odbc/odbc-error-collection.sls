(library (system data odbc odbc-error-collection)
  (export is? odbc-error-collection? get-enumerator copy-to count item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Odbc.OdbcErrorCollection a))
  (define (odbc-error-collection? a)
    (clr-is System.Data.Odbc.OdbcErrorCollection a))
  (define-method-port
    get-enumerator
    System.Data.Odbc.OdbcErrorCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Data.Odbc.OdbcErrorCollection
    CopyTo
    (System.Void System.Data.Odbc.OdbcError[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcErrorCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcErrorCollection
    Item
    System.Data.Odbc.OdbcError))
