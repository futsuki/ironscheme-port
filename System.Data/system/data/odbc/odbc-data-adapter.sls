(library (system data odbc odbc-data-adapter)
  (export new
          is?
          odbc-data-adapter?
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
         #'(clr-new System.Data.Odbc.OdbcDataAdapter a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcDataAdapter a))
  (define (odbc-data-adapter? a)
    (clr-is System.Data.Odbc.OdbcDataAdapter a))
  (define-field-port
    delete-command-get
    delete-command-set!
    delete-command-update!
    (property:)
    System.Data.Odbc.OdbcDataAdapter
    DeleteCommand
    System.Data.Odbc.OdbcCommand)
  (define-field-port
    insert-command-get
    insert-command-set!
    insert-command-update!
    (property:)
    System.Data.Odbc.OdbcDataAdapter
    InsertCommand
    System.Data.Odbc.OdbcCommand)
  (define-field-port
    select-command-get
    select-command-set!
    select-command-update!
    (property:)
    System.Data.Odbc.OdbcDataAdapter
    SelectCommand
    System.Data.Odbc.OdbcCommand)
  (define-field-port
    update-command-get
    update-command-set!
    update-command-update!
    (property:)
    System.Data.Odbc.OdbcDataAdapter
    UpdateCommand
    System.Data.Odbc.OdbcCommand))
