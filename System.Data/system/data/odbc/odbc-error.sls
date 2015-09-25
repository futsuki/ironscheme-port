(library (system data odbc odbc-error)
  (export is?
          odbc-error?
          to-string
          message
          native-error
          source
          sqlstate)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Odbc.OdbcError a))
  (define (odbc-error? a) (clr-is System.Data.Odbc.OdbcError a))
  (define-method-port
    to-string
    System.Data.Odbc.OdbcError
    ToString
    (System.String))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcError
    Message
    System.String)
  (define-field-port
    native-error
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcError
    NativeError
    System.Int32)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcError
    Source
    System.String)
  (define-field-port
    sqlstate
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcError
    SQLState
    System.String))
