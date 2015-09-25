(library (system data sql-client sql-data-adapter)
  (export new
          is?
          sql-data-adapter?
          delete-command-get
          delete-command-set!
          delete-command-update!
          insert-command-get
          insert-command-set!
          insert-command-update!
          select-command-get
          select-command-set!
          select-command-update!
          update-command-get
          update-command-set!
          update-command-update!
          update-batch-size-get
          update-batch-size-set!
          update-batch-size-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlDataAdapter a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlDataAdapter a))
  (define (sql-data-adapter? a)
    (clr-is System.Data.SqlClient.SqlDataAdapter a))
  (define-field-port
    delete-command-get
    delete-command-set!
    delete-command-update!
    (property:)
    System.Data.SqlClient.SqlDataAdapter
    DeleteCommand
    System.Data.SqlClient.SqlCommand)
  (define-field-port
    insert-command-get
    insert-command-set!
    insert-command-update!
    (property:)
    System.Data.SqlClient.SqlDataAdapter
    InsertCommand
    System.Data.SqlClient.SqlCommand)
  (define-field-port
    select-command-get
    select-command-set!
    select-command-update!
    (property:)
    System.Data.SqlClient.SqlDataAdapter
    SelectCommand
    System.Data.SqlClient.SqlCommand)
  (define-field-port
    update-command-get
    update-command-set!
    update-command-update!
    (property:)
    System.Data.SqlClient.SqlDataAdapter
    UpdateCommand
    System.Data.SqlClient.SqlCommand)
  (define-field-port
    update-batch-size-get
    update-batch-size-set!
    update-batch-size-update!
    (property:)
    System.Data.SqlClient.SqlDataAdapter
    UpdateBatchSize
    System.Int32))
