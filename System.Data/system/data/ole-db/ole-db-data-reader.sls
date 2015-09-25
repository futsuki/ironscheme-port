(library (system data ole-db ole-db-data-reader)
  (export is?
          ole-db-data-reader?
          get-values
          is-dbnull?
          read?
          get-chars
          get-data-type-name
          get-decimal
          get-guid
          get-boolean?
          get-data
          get-name
          get-schema-table
          get-int16
          get-string
          get-bytes
          get-enumerator
          get-char
          get-time-span
          get-double
          get-float
          get-int64
          next-result?
          get-date-time
          get-ordinal
          get-value
          get-byte
          get-field-type
          get-int32
          close
          depth
          field-count
          is-closed?
          item
          item
          records-affected
          has-rows?
          visible-field-count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.OleDb.OleDbDataReader a))
  (define (ole-db-data-reader? a)
    (clr-is System.Data.OleDb.OleDbDataReader a))
  (define-method-port
    get-values
    System.Data.OleDb.OleDbDataReader
    GetValues
    (System.Int32 System.Object[]))
  (define-method-port
    is-dbnull?
    System.Data.OleDb.OleDbDataReader
    IsDBNull
    (System.Boolean System.Int32))
  (define-method-port
    read?
    System.Data.OleDb.OleDbDataReader
    Read
    (System.Boolean))
  (define-method-port
    get-chars
    System.Data.OleDb.OleDbDataReader
    GetChars
    (System.Int64
      System.Int32
      System.Int64
      System.Char[]
      System.Int32
      System.Int32))
  (define-method-port
    get-data-type-name
    System.Data.OleDb.OleDbDataReader
    GetDataTypeName
    (System.String System.Int32))
  (define-method-port
    get-decimal
    System.Data.OleDb.OleDbDataReader
    GetDecimal
    (System.Decimal System.Int32))
  (define-method-port
    get-guid
    System.Data.OleDb.OleDbDataReader
    GetGuid
    (System.Guid System.Int32))
  (define-method-port
    get-boolean?
    System.Data.OleDb.OleDbDataReader
    GetBoolean
    (System.Boolean System.Int32))
  (define-method-port
    get-data
    System.Data.OleDb.OleDbDataReader
    GetData
    (System.Data.OleDb.OleDbDataReader System.Int32))
  (define-method-port
    get-name
    System.Data.OleDb.OleDbDataReader
    GetName
    (System.String System.Int32))
  (define-method-port
    get-schema-table
    System.Data.OleDb.OleDbDataReader
    GetSchemaTable
    (System.Data.DataTable))
  (define-method-port
    get-int16
    System.Data.OleDb.OleDbDataReader
    GetInt16
    (System.Int16 System.Int32))
  (define-method-port
    get-string
    System.Data.OleDb.OleDbDataReader
    GetString
    (System.String System.Int32))
  (define-method-port
    get-bytes
    System.Data.OleDb.OleDbDataReader
    GetBytes
    (System.Int64
      System.Int32
      System.Int64
      System.Byte[]
      System.Int32
      System.Int32))
  (define-method-port
    get-enumerator
    System.Data.OleDb.OleDbDataReader
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-char
    System.Data.OleDb.OleDbDataReader
    GetChar
    (System.Char System.Int32))
  (define-method-port
    get-time-span
    System.Data.OleDb.OleDbDataReader
    GetTimeSpan
    (System.TimeSpan System.Int32))
  (define-method-port
    get-double
    System.Data.OleDb.OleDbDataReader
    GetDouble
    (System.Double System.Int32))
  (define-method-port
    get-float
    System.Data.OleDb.OleDbDataReader
    GetFloat
    (System.Single System.Int32))
  (define-method-port
    get-int64
    System.Data.OleDb.OleDbDataReader
    GetInt64
    (System.Int64 System.Int32))
  (define-method-port
    next-result?
    System.Data.OleDb.OleDbDataReader
    NextResult
    (System.Boolean))
  (define-method-port
    get-date-time
    System.Data.OleDb.OleDbDataReader
    GetDateTime
    (System.DateTime System.Int32))
  (define-method-port
    get-ordinal
    System.Data.OleDb.OleDbDataReader
    GetOrdinal
    (System.Int32 System.String))
  (define-method-port
    get-value
    System.Data.OleDb.OleDbDataReader
    GetValue
    (System.Object System.Int32))
  (define-method-port
    get-byte
    System.Data.OleDb.OleDbDataReader
    GetByte
    (System.Byte System.Int32))
  (define-method-port
    get-field-type
    System.Data.OleDb.OleDbDataReader
    GetFieldType
    (System.Type System.Int32))
  (define-method-port
    get-int32
    System.Data.OleDb.OleDbDataReader
    GetInt32
    (System.Int32 System.Int32))
  (define-method-port
    close
    System.Data.OleDb.OleDbDataReader
    Close
    (System.Void))
  (define-field-port
    depth
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbDataReader
    Depth
    System.Int32)
  (define-field-port
    field-count
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbDataReader
    FieldCount
    System.Int32)
  (define-field-port
    is-closed?
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbDataReader
    IsClosed
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbDataReader
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbDataReader
    Item
    System.Object)
  (define-field-port
    records-affected
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbDataReader
    RecordsAffected
    System.Int32)
  (define-field-port
    has-rows?
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbDataReader
    HasRows
    System.Boolean)
  (define-field-port
    visible-field-count
    #f
    #f
    (property:)
    System.Data.OleDb.OleDbDataReader
    VisibleFieldCount
    System.Int32))
