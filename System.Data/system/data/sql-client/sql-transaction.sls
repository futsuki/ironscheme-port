(library (system data sql-client sql-transaction)
  (export is?
          sql-transaction?
          save
          rollback
          commit
          connection
          isolation-level)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.SqlClient.SqlTransaction a))
  (define (sql-transaction? a)
    (clr-is System.Data.SqlClient.SqlTransaction a))
  (define-method-port
    save
    System.Data.SqlClient.SqlTransaction
    Save
    (System.Void System.String))
  (define-method-port
    rollback
    System.Data.SqlClient.SqlTransaction
    Rollback
    (System.Void System.String)
    (System.Void))
  (define-method-port
    commit
    System.Data.SqlClient.SqlTransaction
    Commit
    (System.Void))
  (define-field-port
    connection
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlTransaction
    Connection
    System.Data.SqlClient.SqlConnection)
  (define-field-port
    isolation-level
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlTransaction
    IsolationLevel
    System.Data.IsolationLevel))
