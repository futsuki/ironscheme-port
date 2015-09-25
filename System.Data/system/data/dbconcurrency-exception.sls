(library (system data dbconcurrency-exception)
  (export new
          is?
          dbconcurrency-exception?
          get-object-data
          copy-to-rows
          row-get
          row-set!
          row-update!
          row-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DBConcurrencyException a ...)))))
  (define (is? a) (clr-is System.Data.DBConcurrencyException a))
  (define (dbconcurrency-exception? a)
    (clr-is System.Data.DBConcurrencyException a))
  (define-method-port
    get-object-data
    System.Data.DBConcurrencyException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    copy-to-rows
    System.Data.DBConcurrencyException
    CopyToRows
    (System.Void System.Data.DataRow[] System.Int32)
    (System.Void System.Data.DataRow[]))
  (define-field-port
    row-get
    row-set!
    row-update!
    (property:)
    System.Data.DBConcurrencyException
    Row
    System.Data.DataRow)
  (define-field-port
    row-count
    #f
    #f
    (property:)
    System.Data.DBConcurrencyException
    RowCount
    System.Int32))
