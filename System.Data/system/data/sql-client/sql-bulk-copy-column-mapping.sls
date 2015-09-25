(library (system data sql-client sql-bulk-copy-column-mapping)
  (export new
          is?
          sql-bulk-copy-column-mapping?
          destination-column-get
          destination-column-set!
          destination-column-update!
          source-column-get
          source-column-set!
          source-column-update!
          destination-ordinal-get
          destination-ordinal-set!
          destination-ordinal-update!
          source-ordinal-get
          source-ordinal-set!
          source-ordinal-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.SqlClient.SqlBulkCopyColumnMapping
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.SqlClient.SqlBulkCopyColumnMapping a))
  (define (sql-bulk-copy-column-mapping? a)
    (clr-is System.Data.SqlClient.SqlBulkCopyColumnMapping a))
  (define-field-port
    destination-column-get
    destination-column-set!
    destination-column-update!
    (property:)
    System.Data.SqlClient.SqlBulkCopyColumnMapping
    DestinationColumn
    System.String)
  (define-field-port
    source-column-get
    source-column-set!
    source-column-update!
    (property:)
    System.Data.SqlClient.SqlBulkCopyColumnMapping
    SourceColumn
    System.String)
  (define-field-port
    destination-ordinal-get
    destination-ordinal-set!
    destination-ordinal-update!
    (property:)
    System.Data.SqlClient.SqlBulkCopyColumnMapping
    DestinationOrdinal
    System.Int32)
  (define-field-port
    source-ordinal-get
    source-ordinal-set!
    source-ordinal-update!
    (property:)
    System.Data.SqlClient.SqlBulkCopyColumnMapping
    SourceOrdinal
    System.Int32))
