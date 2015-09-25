(library (system data odbc odbc-connection)
  (export new
          is?
          odbc-connection?
          begin-transaction
          enlist-transaction
          open
          get-schema
          release-object-pool
          change-database
          create-command
          enlist-distributed-transaction
          close
          connection-string-get
          connection-string-set!
          connection-string-update!
          connection-timeout-get
          connection-timeout-set!
          connection-timeout-update!
          database
          state
          data-source
          driver
          server-version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Odbc.OdbcConnection a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcConnection a))
  (define (odbc-connection? a)
    (clr-is System.Data.Odbc.OdbcConnection a))
  (define-method-port
    begin-transaction
    System.Data.Odbc.OdbcConnection
    BeginTransaction
    (System.Data.Odbc.OdbcTransaction System.Data.IsolationLevel)
    (System.Data.Odbc.OdbcTransaction))
  (define-method-port
    enlist-transaction
    System.Data.Odbc.OdbcConnection
    EnlistTransaction
    (System.Void System.Transactions.Transaction))
  (define-method-port
    open
    System.Data.Odbc.OdbcConnection
    Open
    (System.Void))
  (define-method-port
    get-schema
    System.Data.Odbc.OdbcConnection
    GetSchema
    (System.Data.DataTable System.String System.String[])
    (System.Data.DataTable System.String)
    (System.Data.DataTable))
  (define-method-port
    release-object-pool
    System.Data.Odbc.OdbcConnection
    ReleaseObjectPool
    (static: System.Void))
  (define-method-port
    change-database
    System.Data.Odbc.OdbcConnection
    ChangeDatabase
    (System.Void System.String))
  (define-method-port
    create-command
    System.Data.Odbc.OdbcConnection
    CreateCommand
    (System.Data.Odbc.OdbcCommand))
  (define-method-port
    enlist-distributed-transaction
    System.Data.Odbc.OdbcConnection
    EnlistDistributedTransaction
    (System.Void System.EnterpriseServices.ITransaction))
  (define-method-port
    close
    System.Data.Odbc.OdbcConnection
    Close
    (System.Void))
  (define-field-port
    connection-string-get
    connection-string-set!
    connection-string-update!
    (property:)
    System.Data.Odbc.OdbcConnection
    ConnectionString
    System.String)
  (define-field-port
    connection-timeout-get
    connection-timeout-set!
    connection-timeout-update!
    (property:)
    System.Data.Odbc.OdbcConnection
    ConnectionTimeout
    System.Int32)
  (define-field-port
    database
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcConnection
    Database
    System.String)
  (define-field-port
    state
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcConnection
    State
    System.Data.ConnectionState)
  (define-field-port
    data-source
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcConnection
    DataSource
    System.String)
  (define-field-port
    driver
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcConnection
    Driver
    System.String)
  (define-field-port
    server-version
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcConnection
    ServerVersion
    System.String))
