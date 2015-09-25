(library (system data odbc odbc-transaction)
  (export is?
          odbc-transaction?
          rollback
          commit
          isolation-level
          connection)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Odbc.OdbcTransaction a))
  (define (odbc-transaction? a)
    (clr-is System.Data.Odbc.OdbcTransaction a))
  (define-method-port
    rollback
    System.Data.Odbc.OdbcTransaction
    Rollback
    (System.Void))
  (define-method-port
    commit
    System.Data.Odbc.OdbcTransaction
    Commit
    (System.Void))
  (define-field-port
    isolation-level
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcTransaction
    IsolationLevel
    System.Data.IsolationLevel)
  (define-field-port
    connection
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcTransaction
    Connection
    System.Data.Odbc.OdbcConnection))
