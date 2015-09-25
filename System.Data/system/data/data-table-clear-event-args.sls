(library (system data data-table-clear-event-args)
  (export new
          is?
          data-table-clear-event-args?
          table
          table-name
          table-namespace)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.DataTableClearEventArgs a ...)))))
  (define (is? a) (clr-is System.Data.DataTableClearEventArgs a))
  (define (data-table-clear-event-args? a)
    (clr-is System.Data.DataTableClearEventArgs a))
  (define-field-port
    table
    #f
    #f
    (property:)
    System.Data.DataTableClearEventArgs
    Table
    System.Data.DataTable)
  (define-field-port
    table-name
    #f
    #f
    (property:)
    System.Data.DataTableClearEventArgs
    TableName
    System.String)
  (define-field-port
    table-namespace
    #f
    #f
    (property:)
    System.Data.DataTableClearEventArgs
    TableNamespace
    System.String))
