(library (system data common row-updated-event-args)
  (export new
          is?
          row-updated-event-args?
          copy-to-rows
          command
          errors-get
          errors-set!
          errors-update!
          records-affected
          row
          statement-type
          status-get
          status-set!
          status-update!
          table-mapping
          row-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.RowUpdatedEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.Common.RowUpdatedEventArgs a))
  (define (row-updated-event-args? a)
    (clr-is System.Data.Common.RowUpdatedEventArgs a))
  (define-method-port
    copy-to-rows
    System.Data.Common.RowUpdatedEventArgs
    CopyToRows
    (System.Void System.Data.DataRow[] System.Int32)
    (System.Void System.Data.DataRow[]))
  (define-field-port
    command
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatedEventArgs
    Command
    System.Data.IDbCommand)
  (define-field-port
    errors-get
    errors-set!
    errors-update!
    (property:)
    System.Data.Common.RowUpdatedEventArgs
    Errors
    System.Exception)
  (define-field-port
    records-affected
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatedEventArgs
    RecordsAffected
    System.Int32)
  (define-field-port
    row
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatedEventArgs
    Row
    System.Data.DataRow)
  (define-field-port
    statement-type
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatedEventArgs
    StatementType
    System.Data.StatementType)
  (define-field-port
    status-get
    status-set!
    status-update!
    (property:)
    System.Data.Common.RowUpdatedEventArgs
    Status
    System.Data.UpdateStatus)
  (define-field-port
    table-mapping
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatedEventArgs
    TableMapping
    System.Data.Common.DataTableMapping)
  (define-field-port
    row-count
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatedEventArgs
    RowCount
    System.Int32))
