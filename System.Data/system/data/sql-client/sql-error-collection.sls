(library (system data sql-client sql-error-collection)
  (export is? sql-error-collection? get-enumerator copy-to count item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.SqlClient.SqlErrorCollection a))
  (define (sql-error-collection? a)
    (clr-is System.Data.SqlClient.SqlErrorCollection a))
  (define-method-port
    get-enumerator
    System.Data.SqlClient.SqlErrorCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Data.SqlClient.SqlErrorCollection
    CopyTo
    (System.Void System.Data.SqlClient.SqlError[] System.Int32)
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlErrorCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlErrorCollection
    Item
    System.Data.SqlClient.SqlError))
