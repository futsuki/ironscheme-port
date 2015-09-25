(library (system data common db-connection)
  (export is?
          db-connection?
          begin-transaction
          enlist-transaction
          open
          get-schema
          change-database
          create-command
          close
          connection-string-get
          connection-string-set!
          connection-string-update!
          database
          data-source
          server-version
          state
          connection-timeout)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbConnection a))
  (define (db-connection? a) (clr-is System.Data.Common.DbConnection a))
  (define-method-port
    begin-transaction
    System.Data.Common.DbConnection
    BeginTransaction
    (System.Data.Common.DbTransaction System.Data.IsolationLevel)
    (System.Data.Common.DbTransaction))
  (define-method-port
    enlist-transaction
    System.Data.Common.DbConnection
    EnlistTransaction
    (System.Void System.Transactions.Transaction))
  (define-method-port
    open
    System.Data.Common.DbConnection
    Open
    (System.Void))
  (define-method-port
    get-schema
    System.Data.Common.DbConnection
    GetSchema
    (System.Data.DataTable System.String System.String[])
    (System.Data.DataTable System.String)
    (System.Data.DataTable))
  (define-method-port
    change-database
    System.Data.Common.DbConnection
    ChangeDatabase
    (System.Void System.String))
  (define-method-port
    create-command
    System.Data.Common.DbConnection
    CreateCommand
    (System.Data.Common.DbCommand))
  (define-method-port
    close
    System.Data.Common.DbConnection
    Close
    (System.Void))
  (define-field-port
    connection-string-get
    connection-string-set!
    connection-string-update!
    (property:)
    System.Data.Common.DbConnection
    ConnectionString
    System.String)
  (define-field-port
    database
    #f
    #f
    (property:)
    System.Data.Common.DbConnection
    Database
    System.String)
  (define-field-port
    data-source
    #f
    #f
    (property:)
    System.Data.Common.DbConnection
    DataSource
    System.String)
  (define-field-port
    server-version
    #f
    #f
    (property:)
    System.Data.Common.DbConnection
    ServerVersion
    System.String)
  (define-field-port
    state
    #f
    #f
    (property:)
    System.Data.Common.DbConnection
    State
    System.Data.ConnectionState)
  (define-field-port
    connection-timeout
    #f
    #f
    (property:)
    System.Data.Common.DbConnection
    ConnectionTimeout
    System.Int32))
