(library (system data odbc odbc-command-builder)
  (export new
          is?
          odbc-command-builder?
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
         #'(clr-new System.Data.Odbc.OdbcCommandBuilder a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcCommandBuilder a))
  (define (odbc-command-builder? a)
    (clr-is System.Data.Odbc.OdbcCommandBuilder a))
  (define-method-port
    derive-parameters
    System.Data.Odbc.OdbcCommandBuilder
    DeriveParameters
    (static: System.Void System.Data.Odbc.OdbcCommand))
  (define-method-port
    unquote-identifier
    System.Data.Odbc.OdbcCommandBuilder
    UnquoteIdentifier
    (System.String System.String)
    (System.String System.String System.Data.Odbc.OdbcConnection))
  (define-method-port
    get-delete-command
    System.Data.Odbc.OdbcCommandBuilder
    GetDeleteCommand
    (System.Data.Odbc.OdbcCommand System.Boolean)
    (System.Data.Odbc.OdbcCommand))
  (define-method-port
    quote-identifier
    System.Data.Odbc.OdbcCommandBuilder
    QuoteIdentifier
    (System.String System.String System.Data.Odbc.OdbcConnection)
    (System.String System.String))
  (define-method-port
    get-insert-command
    System.Data.Odbc.OdbcCommandBuilder
    GetInsertCommand
    (System.Data.Odbc.OdbcCommand System.Boolean)
    (System.Data.Odbc.OdbcCommand))
  (define-method-port
    get-update-command
    System.Data.Odbc.OdbcCommandBuilder
    GetUpdateCommand
    (System.Data.Odbc.OdbcCommand System.Boolean)
    (System.Data.Odbc.OdbcCommand))
  (define-field-port
    data-adapter-get
    data-adapter-set!
    data-adapter-update!
    (property:)
    System.Data.Odbc.OdbcCommandBuilder
    DataAdapter
    System.Data.Odbc.OdbcDataAdapter))
