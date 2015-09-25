(library (system data odbc odbc-data-reader)
  (export is?
          odbc-data-reader?
          get-values
          is-dbnull?
          read?
          get-chars
          get-schema-table
          get-data-type-name
          get-decimal
          get-guid
          get-boolean?
          get-name
          get-date
          get-int16
          get-string
          get-bytes
          get-enumerator
          get-char
          get-double
          get-float
          get-int64
          next-result?
          get-date-time
          get-ordinal
          get-value
          get-byte
          get-time
          get-field-type
          get-int32
          close
          depth
          field-count
          is-closed?
          item
          item
          records-affected
          has-rows?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Odbc.OdbcDataReader a))
  (define (odbc-data-reader? a)
    (clr-is System.Data.Odbc.OdbcDataReader a))
  (define-method-port
    get-values
    System.Data.Odbc.OdbcDataReader
    GetValues
    (System.Int32 System.Object[]))
  (define-method-port
    is-dbnull?
    System.Data.Odbc.OdbcDataReader
    IsDBNull
    (System.Boolean System.Int32))
  (define-method-port
    read?
    System.Data.Odbc.OdbcDataReader
    Read
    (System.Boolean))
  (define-method-port
    get-chars
    System.Data.Odbc.OdbcDataReader
    GetChars
    (System.Int64
      System.Int32
      System.Int64
      System.Char[]
      System.Int32
      System.Int32))
  (define-method-port
    get-schema-table
    System.Data.Odbc.OdbcDataReader
    GetSchemaTable
    (System.Data.DataTable))
  (define-method-port
    get-data-type-name
    System.Data.Odbc.OdbcDataReader
    GetDataTypeName
    (System.String System.Int32))
  (define-method-port
    get-decimal
    System.Data.Odbc.OdbcDataReader
    GetDecimal
    (System.Decimal System.Int32))
  (define-method-port
    get-guid
    System.Data.Odbc.OdbcDataReader
    GetGuid
    (System.Guid System.Int32))
  (define-method-port
    get-boolean?
    System.Data.Odbc.OdbcDataReader
    GetBoolean
    (System.Boolean System.Int32))
  (define-method-port
    get-name
    System.Data.Odbc.OdbcDataReader
    GetName
    (System.String System.Int32))
  (define-method-port
    get-date
    System.Data.Odbc.OdbcDataReader
    GetDate
    (System.DateTime System.Int32))
  (define-method-port
    get-int16
    System.Data.Odbc.OdbcDataReader
    GetInt16
    (System.Int16 System.Int32))
  (define-method-port
    get-string
    System.Data.Odbc.OdbcDataReader
    GetString
    (System.String System.Int32))
  (define-method-port
    get-bytes
    System.Data.Odbc.OdbcDataReader
    GetBytes
    (System.Int64
      System.Int32
      System.Int64
      System.Byte[]
      System.Int32
      System.Int32))
  (define-method-port
    get-enumerator
    System.Data.Odbc.OdbcDataReader
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-char
    System.Data.Odbc.OdbcDataReader
    GetChar
    (System.Char System.Int32))
  (define-method-port
    get-double
    System.Data.Odbc.OdbcDataReader
    GetDouble
    (System.Double System.Int32))
  (define-method-port
    get-float
    System.Data.Odbc.OdbcDataReader
    GetFloat
    (System.Single System.Int32))
  (define-method-port
    get-int64
    System.Data.Odbc.OdbcDataReader
    GetInt64
    (System.Int64 System.Int32))
  (define-method-port
    next-result?
    System.Data.Odbc.OdbcDataReader
    NextResult
    (System.Boolean))
  (define-method-port
    get-date-time
    System.Data.Odbc.OdbcDataReader
    GetDateTime
    (System.DateTime System.Int32))
  (define-method-port
    get-ordinal
    System.Data.Odbc.OdbcDataReader
    GetOrdinal
    (System.Int32 System.String))
  (define-method-port
    get-value
    System.Data.Odbc.OdbcDataReader
    GetValue
    (System.Object System.Int32))
  (define-method-port
    get-byte
    System.Data.Odbc.OdbcDataReader
    GetByte
    (System.Byte System.Int32))
  (define-method-port
    get-time
    System.Data.Odbc.OdbcDataReader
    GetTime
    (System.TimeSpan System.Int32))
  (define-method-port
    get-field-type
    System.Data.Odbc.OdbcDataReader
    GetFieldType
    (System.Type System.Int32))
  (define-method-port
    get-int32
    System.Data.Odbc.OdbcDataReader
    GetInt32
    (System.Int32 System.Int32))
  (define-method-port
    close
    System.Data.Odbc.OdbcDataReader
    Close
    (System.Void))
  (define-field-port
    depth
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcDataReader
    Depth
    System.Int32)
  (define-field-port
    field-count
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcDataReader
    FieldCount
    System.Int32)
  (define-field-port
    is-closed?
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcDataReader
    IsClosed
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcDataReader
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcDataReader
    Item
    System.Object)
  (define-field-port
    records-affected
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcDataReader
    RecordsAffected
    System.Int32)
  (define-field-port
    has-rows?
    #f
    #f
    (property:)
    System.Data.Odbc.OdbcDataReader
    HasRows
    System.Boolean))
