(library (system data sql-client sql-bulk-copy)
  (export new
          is?
          sql-bulk-copy?
          write-to-server
          close
          batch-size-get
          batch-size-set!
          batch-size-update!
          bulk-copy-timeout-get
          bulk-copy-timeout-set!
          bulk-copy-timeout-update!
          column-mappings
          destination-table-name-get
          destination-table-name-set!
          destination-table-name-update!
          notify-after-get
          notify-after-set!
          notify-after-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlBulkCopy a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlBulkCopy a))
  (define (sql-bulk-copy? a)
    (clr-is System.Data.SqlClient.SqlBulkCopy a))
  (define-method-port
    write-to-server
    System.Data.SqlClient.SqlBulkCopy
    WriteToServer
    (System.Void System.Data.DataTable System.Data.DataRowState)
    (System.Void System.Data.IDataReader)
    (System.Void System.Data.DataTable)
    (System.Void System.Data.DataRow[]))
  (define-method-port
    close
    System.Data.SqlClient.SqlBulkCopy
    Close
    (System.Void))
  (define-field-port
    batch-size-get
    batch-size-set!
    batch-size-update!
    (property:)
    System.Data.SqlClient.SqlBulkCopy
    BatchSize
    System.Int32)
  (define-field-port
    bulk-copy-timeout-get
    bulk-copy-timeout-set!
    bulk-copy-timeout-update!
    (property:)
    System.Data.SqlClient.SqlBulkCopy
    BulkCopyTimeout
    System.Int32)
  (define-field-port
    column-mappings
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlBulkCopy
    ColumnMappings
    System.Data.SqlClient.SqlBulkCopyColumnMappingCollection)
  (define-field-port
    destination-table-name-get
    destination-table-name-set!
    destination-table-name-update!
    (property:)
    System.Data.SqlClient.SqlBulkCopy
    DestinationTableName
    System.String)
  (define-field-port
    notify-after-get
    notify-after-set!
    notify-after-update!
    (property:)
    System.Data.SqlClient.SqlBulkCopy
    NotifyAfter
    System.Int32))
