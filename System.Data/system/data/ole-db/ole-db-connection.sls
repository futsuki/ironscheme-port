(library (system data ole-db ole-db-connection)
  (export new
          is?
          ole-db-connection?
          get-ole-db-schema-table
          begin-transaction
          reset-state
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
          connection-timeout
          database
          data-source
          provider
          server-version
          state)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.OleDb.OleDbConnection a ...)))))
  (define (is? a) (clr-is System.Data.OleDb.OleDbConnection a))
  (define (ole-db-connection? a)
    (clr-is System.Data.OleDb.OleDbConnection a))
  (define-method-port
    get-ole-db-schema-table
    System.Data.OleDb.OleDbConnection
    GetOleDbSchemaTable
    (System.Data.DataTable System.Guid System.Object[]))
  (define-method-port
    begin-transaction
    System.Data.OleDb.OleDbConnection
    BeginTransaction
    (System.Data.OleDb.OleDbTransaction System.Data.IsolationLevel)
    (System.Data.OleDb.OleDbTransaction))
  (define-method-port
    reset-state
    System.Data.OleDb.OleDbConnection
    ResetState
    (System.Void))
  (define-method-port
    enlist-transaction
    System.Data.OleDb.OleDbConnection
    EnlistTransaction
    (System.Void System.Transactions.Transaction))
  (define-method-port
    open
    System.Data.OleDb.OleDbConnection
    Open
    (System.Void))
  (define-method-port
    get-schema
    System.Data.OleDb.OleDbConnection
    GetSchema
    (System.Data.DataTable System.String System.String[])
    (System.Data.DataTable System.String)
    (System.Data.DataTable))
  (define-method-port
    release-object-pool
    System.Data.OleDb.OleDbConnection
    ReleaseObjectPool
    (static: System.Void))
  (define-method-port
    change-database
    System.Data.OleDb.OleDbConnection
    ChangeDatabase
    (System.Void System.String))
  (define-method-port
    create-command
    System.Data.OleDb.OleDbConnection
    CreateCommand
    (System.Data.OleDb.OleDbCommand))
  (define-method-port
    enlist-distributed-transaction
    System.Data.OleDb.OleDbConnection
    EnlistDistributedTransaction
    (System.Void System.EnterpriseServices.ITransaction))
  (define-method-port
    close
    System.Data.OleDb.OleDbConnection
    Close
    (System.Void))
  (define-field-port
    connection-string-get
    connection-string-set!
    connection-string-update!
    (property:)
    System.Data.OleDb.OleDbConnection
    ConnectionString
    System.String)
  (define-field-port
    connection-timeout
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbConnection
    ConnectionTimeout
    System.Int32)
  (define-field-port
    database
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbConnection
    Database
    System.String)
  (define-field-port
    data-source
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbConnection
    DataSource
    System.String)
  (define-field-port
    provider
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbConnection
    Provider
    System.String)
  (define-field-port
    server-version
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbConnection
    ServerVersion
    System.String)
  (define-field-port
    state
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbConnection
    State
    System.Data.ConnectionState))
