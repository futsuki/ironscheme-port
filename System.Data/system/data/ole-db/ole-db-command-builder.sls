(library (system data ole-db ole-db-command-builder)
  (export new
          is?
          ole-db-command-builder?
          derive-parameters
          unquote-identifier
          get-delete-command
          quote-identifier
          get-insert-command
          get-update-command
          data-adapter-get
          data-adapter-set!
          data-adapter-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.OleDb.OleDbCommandBuilder a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.OleDbCommandBuilder a))
  (define (ole-db-command-builder? a)
    (clr-is System.Data.OleDb.OleDbCommandBuilder a))
  (define-method-port
    derive-parameters
    System.Data.OleDb.OleDbCommandBuilder
    DeriveParameters
    (static: System.Void System.Data.OleDb.OleDbCommand))
  (define-method-port
    unquote-identifier
    System.Data.OleDb.OleDbCommandBuilder
    UnquoteIdentifier
    (System.String System.String System.Data.OleDb.OleDbConnection)
    (System.String System.String))
  (define-method-port
    get-delete-command
    System.Data.OleDb.OleDbCommandBuilder
    GetDeleteCommand
    (System.Data.OleDb.OleDbCommand System.Boolean)
    (System.Data.OleDb.OleDbCommand))
  (define-method-port
    quote-identifier
    System.Data.OleDb.OleDbCommandBuilder
    QuoteIdentifier
    (System.String System.String System.Data.OleDb.OleDbConnection)
    (System.String System.String))
  (define-method-port
    get-insert-command
    System.Data.OleDb.OleDbCommandBuilder
    GetInsertCommand
    (System.Data.OleDb.OleDbCommand System.Boolean)
    (System.Data.OleDb.OleDbCommand))
  (define-method-port
    get-update-command
    System.Data.OleDb.OleDbCommandBuilder
    GetUpdateCommand
    (System.Data.OleDb.OleDbCommand System.Boolean)
    (System.Data.OleDb.OleDbCommand))
  (define-field-port
    data-adapter-get
    data-adapter-set!
    data-adapter-update!
    (property:)
    System.Data.OleDb.OleDbCommandBuilder
    DataAdapter
    System.Data.OleDb.OleDbDataAdapter))
