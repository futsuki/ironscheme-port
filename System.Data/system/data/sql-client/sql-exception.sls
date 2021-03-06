(library (system data sql-client sql-exception)
  (export is?
          sql-exception?
          get-object-data
          class
          errors
          line-number
          message
          number
          procedure
          server
          source
          state)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.SqlClient.SqlException a))
  (define (sql-exception? a)
    (clr-is System.Data.SqlClient.SqlException a))
  (define-method-port
    get-object-data
    System.Data.SqlClient.SqlException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    class
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    Class
    System.Byte)
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    Errors
    System.Data.SqlClient.SqlErrorCollection)
  (define-field-port
    line-number
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    LineNumber
    System.Int32)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    Message
    System.String)
  (define-field-port
    number
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    Number
    System.Int32)
  (define-field-port
    procedure
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    Procedure
    System.String)
  (define-field-port
    server
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    Server
    System.String)
  (define-field-port
    source
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    Source
    System.String)
  (define-field-port
    state
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlException
    State
    System.Byte))
