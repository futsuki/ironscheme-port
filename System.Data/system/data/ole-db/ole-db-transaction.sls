(library (system data ole-db ole-db-transaction)
  (export is?
          ole-db-transaction?
          rollback
          commit
          begin
          connection
          isolation-level)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.OleDb.OleDbTransaction a))
  (define (ole-db-transaction? a)
    (clr-is System.Data.OleDb.OleDbTransaction a))
  (define-method-port
    rollback
    System.Data.OleDb.OleDbTransaction
    Rollback
    (System.Void))
  (define-method-port
    commit
    System.Data.OleDb.OleDbTransaction
    Commit
    (System.Void))
  (define-method-port
    begin
    System.Data.OleDb.OleDbTransaction
    Begin
    (System.Data.OleDb.OleDbTransaction System.Data.IsolationLevel)
    (System.Data.OleDb.OleDbTransaction))
  (define-field-port
    connection
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbTransaction
    Connection
    System.Data.OleDb.OleDbConnection)
  (define-field-port
    isolation-level
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbTransaction
    IsolationLevel
    System.Data.IsolationLevel))
