(library (system data odbc odbc-exception)
  (export is? odbc-exception? get-object-data errors source)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Odbc.OdbcException a))
  (define (odbc-exception? a) (clr-is System.Data.Odbc.OdbcException a))
  (define-method-port
    get-object-data
    System.Data.Odbc.OdbcException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcException
    Errors
    System.Data.Odbc.OdbcErrorCollection)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcException
    Source
    System.String))
