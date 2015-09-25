(library (system data common row-updating-event-args)
  (export new
          is?
          row-updating-event-args?
          command-get
          command-set!
          command-update!
          errors-get
          errors-set!
          errors-update!
          row
          statement-type
          status-get
          status-set!
          status-update!
          table-mapping)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.RowUpdatingEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.Common.RowUpdatingEventArgs a))
  (define (row-updating-event-args? a)
    (clr-is System.Data.Common.RowUpdatingEventArgs a))
  (define-field-port
    command-get
    command-set!
    command-update!
    (property:)
    System.Data.Common.RowUpdatingEventArgs
    Command
    System.Data.IDbCommand)
  (define-field-port
    errors-get
    errors-set!
    errors-update!
    (property:)
    System.Data.Common.RowUpdatingEventArgs
    Errors
    System.Exception)
  (define-field-port
    row
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatingEventArgs
    Row
    System.Data.DataRow)
  (define-field-port
    statement-type
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatingEventArgs
    StatementType
    System.Data.StatementType)
  (define-field-port
    status-get
    status-set!
    status-update!
    (property:)
    System.Data.Common.RowUpdatingEventArgs
    Status
    System.Data.UpdateStatus)
  (define-field-port
    table-mapping
    #f
    #f
    (property:)
    System.Data.Common.RowUpdatingEventArgs
    TableMapping
    System.Data.Common.DataTableMapping))
