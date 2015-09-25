(library (system data ole-db ole-db-error)
  (export is?
          ole-db-error?
          to-string
          message
          native-error
          source
          sqlstate)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.OleDb.OleDbError a))
  (define (ole-db-error? a) (clr-is System.Data.OleDb.OleDbError a))
  (define-method-port
    to-string
    System.Data.OleDb.OleDbError
    ToString
    (System.String))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbError
    Message
    System.String)
  (define-field-port
    native-error
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbError
    NativeError
    System.Int32)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbError
    Source
    System.String)
  (define-field-port
    sqlstate
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbError
    SQLState
    System.String))
