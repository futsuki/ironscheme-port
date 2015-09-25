(library (system data common db-transaction)
  (export is?
          db-transaction?
          dispose
          rollback
          commit
          connection
          isolation-level)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbTransaction a))
  (define (db-transaction? a)
    (clr-is System.Data.Common.DbTransaction a))
  (define-method-port
    dispose
    System.Data.Common.DbTransaction
    Dispose
    (System.Void))
  (define-method-port
    rollback
    System.Data.Common.DbTransaction
    Rollback
    (System.Void))
  (define-method-port
    commit
    System.Data.Common.DbTransaction
    Commit
    (System.Void))
  (define-field-port
    connection
    #f
    #f
    (property:)
    System.Data.Common.DbTransaction
    Connection
    System.Data.Common.DbConnection)
  (define-field-port
    isolation-level
    #f
    #f
    (property:)
    System.Data.Common.DbTransaction
    IsolationLevel
    System.Data.IsolationLevel))
