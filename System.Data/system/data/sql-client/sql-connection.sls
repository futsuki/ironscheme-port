(library (system data sql-client sql-connection)
  (export new
          is?
          sql-connection?
          begin-transaction
          change-password
          clear-pool
          open
          clear-all-pools
          get-schema
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
          packet-size
          server-version
          state
          workstation-id
          fire-info-message-event-on-user-errors?-get
          fire-info-message-event-on-user-errors?-set!
          fire-info-message-event-on-user-errors?-update!
          statistics-enabled?-get
          statistics-enabled?-set!
          statistics-enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlConnection a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlConnection a))
  (define (sql-connection? a)
    (clr-is System.Data.SqlClient.SqlConnection a))
  (define-method-port
    begin-transaction
    System.Data.SqlClient.SqlConnection
    BeginTransaction
    (System.Data.SqlClient.SqlTransaction
      System.Data.IsolationLevel
      System.String)
    (System.Data.SqlClient.SqlTransaction System.String)
    (System.Data.SqlClient.SqlTransaction System.Data.IsolationLevel)
    (System.Data.SqlClient.SqlTransaction))
  (define-method-port
    change-password
    System.Data.SqlClient.SqlConnection
    ChangePassword
    (static: System.Void System.String System.String))
  (define-method-port
    clear-pool
    System.Data.SqlClient.SqlConnection
    ClearPool
    (static: System.Void System.Data.SqlClient.SqlConnection))
  (define-method-port
    open
    System.Data.SqlClient.SqlConnection
    Open
    (System.Void))
  (define-method-port
    clear-all-pools
    System.Data.SqlClient.SqlConnection
    ClearAllPools
    (static: System.Void))
  (define-method-port
    get-schema
    System.Data.SqlClient.SqlConnection
    GetSchema
    (System.Data.DataTable System.String System.String[])
    (System.Data.DataTable System.String)
    (System.Data.DataTable))
  (define-method-port
    change-database
    System.Data.SqlClient.SqlConnection
    ChangeDatabase
    (System.Void System.String))
  (define-method-port
    create-command
    System.Data.SqlClient.SqlConnection
    CreateCommand
    (System.Data.SqlClient.SqlCommand))
  (define-method-port
    enlist-distributed-transaction
    System.Data.SqlClient.SqlConnection
    EnlistDistributedTransaction
    (System.Void System.EnterpriseServices.ITransaction))
  (define-method-port
    close
    System.Data.SqlClient.SqlConnection
    Close
    (System.Void))
  (define-field-port
    connection-string-get
    connection-string-set!
    connection-string-update!
    (property:)
    System.Data.SqlClient.SqlConnection
    ConnectionString
    System.String)
  (define-field-port
    connection-timeout
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlConnection
    ConnectionTimeout
    System.Int32)
  (define-field-port
    database
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlConnection
    Database
    System.String)
  (define-field-port
    data-source
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlConnection
    DataSource
    System.String)
  (define-field-port
    packet-size
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlConnection
    PacketSize
    System.Int32)
  (define-field-port
    server-version
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlConnection
    ServerVersion
    System.String)
  (define-field-port
    state
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlConnection
    State
    System.Data.ConnectionState)
  (define-field-port
    workstation-id
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlConnection
    WorkstationId
    System.String)
  (define-field-port
    fire-info-message-event-on-user-errors?-get
    fire-info-message-event-on-user-errors?-set!
    fire-info-message-event-on-user-errors?-update!
    (property:)
    System.Data.SqlClient.SqlConnection
    FireInfoMessageEventOnUserErrors
    System.Boolean)
  (define-field-port
    statistics-enabled?-get
    statistics-enabled?-set!
    statistics-enabled?-update!
    (property:)
    System.Data.SqlClient.SqlConnection
    StatisticsEnabled
    System.Boolean))
