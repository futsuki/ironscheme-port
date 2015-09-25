(library (system data ole-db ole-db-data-adapter)
  (export new
          is?
          ole-db-data-adapter?
          fill
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
          update-command-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.OleDb.OleDbDataAdapter a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.OleDbDataAdapter a))
  (define (ole-db-data-adapter? a)
    (clr-is System.Data.OleDb.OleDbDataAdapter a))
  (define-method-port
    fill
    System.Data.OleDb.OleDbDataAdapter
    Fill
    (System.Int32 System.Data.DataSet System.Object System.String)
    (System.Int32 System.Data.DataTable System.Object))
  (define-field-port
    delete-command-get
    delete-command-set!
    delete-command-update!
    (property:)
    System.Data.OleDb.OleDbDataAdapter
    DeleteCommand
    System.Data.OleDb.OleDbCommand)
  (define-field-port
    insert-command-get
    insert-command-set!
    insert-command-update!
    (property:)
    System.Data.OleDb.OleDbDataAdapter
    InsertCommand
    System.Data.OleDb.OleDbCommand)
  (define-field-port
    select-command-get
    select-command-set!
    select-command-update!
    (property:)
    System.Data.OleDb.OleDbDataAdapter
    SelectCommand
    System.Data.OleDb.OleDbCommand)
  (define-field-port
    update-command-get
    update-command-set!
    update-command-update!
    (property:)
    System.Data.OleDb.OleDbDataAdapter
    UpdateCommand
    System.Data.OleDb.OleDbCommand))
