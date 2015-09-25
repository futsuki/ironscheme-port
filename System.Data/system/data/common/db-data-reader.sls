(library (system data common db-data-reader)
  (export is?
          db-data-reader?
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
          get-char
          get-double
          get-provider-specific-value
          get-enumerator
          get-int64
          next-result?
          get-date-time
          get-ordinal
          get-value
          get-float
          get-byte
          get-provider-specific-values
          get-provider-specific-field-type
          get-field-type
          dispose
          get-int32
          close
          depth
          field-count
          has-rows?
          is-closed?
          item
          item
          records-affected
          visible-field-count)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbDataReader a))
  (define (db-data-reader? a)
    (clr-is System.Data.Common.DbDataReader a))
  (define-method-port
    get-values
    System.Data.Common.DbDataReader
    GetValues
    (System.Int32 System.Object[]))
  (define-method-port
    is-dbnull?
    System.Data.Common.DbDataReader
    IsDBNull
    (System.Boolean System.Int32))
  (define-method-port
    read?
    System.Data.Common.DbDataReader
    Read
    (System.Boolean))
  (define-method-port
    get-chars
    System.Data.Common.DbDataReader
    GetChars
    (System.Int64
      System.Int32
      System.Int64
      System.Char[]
      System.Int32
      System.Int32))
  (define-method-port
    get-data-type-name
    System.Data.Common.DbDataReader
    GetDataTypeName
    (System.String System.Int32))
  (define-method-port
    get-decimal
    System.Data.Common.DbDataReader
    GetDecimal
    (System.Decimal System.Int32))
  (define-method-port
    get-guid
    System.Data.Common.DbDataReader
    GetGuid
    (System.Guid System.Int32))
  (define-method-port
    get-boolean?
    System.Data.Common.DbDataReader
    GetBoolean
    (System.Boolean System.Int32))
  (define-method-port
    get-data
    System.Data.Common.DbDataReader
    GetData
    (System.Data.Common.DbDataReader System.Int32))
  (define-method-port
    get-name
    System.Data.Common.DbDataReader
    GetName
    (System.String System.Int32))
  (define-method-port
    get-schema-table
    System.Data.Common.DbDataReader
    GetSchemaTable
    (System.Data.DataTable))
  (define-method-port
    get-int16
    System.Data.Common.DbDataReader
    GetInt16
    (System.Int16 System.Int32))
  (define-method-port
    get-string
    System.Data.Common.DbDataReader
    GetString
    (System.String System.Int32))
  (define-method-port
    get-bytes
    System.Data.Common.DbDataReader
    GetBytes
    (System.Int64
      System.Int32
      System.Int64
      System.Byte[]
      System.Int32
      System.Int32))
  (define-method-port
    get-char
    System.Data.Common.DbDataReader
    GetChar
    (System.Char System.Int32))
  (define-method-port
    get-double
    System.Data.Common.DbDataReader
    GetDouble
    (System.Double System.Int32))
  (define-method-port
    get-provider-specific-value
    System.Data.Common.DbDataReader
    GetProviderSpecificValue
    (System.Object System.Int32))
  (define-method-port
    get-enumerator
    System.Data.Common.DbDataReader
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-int64
    System.Data.Common.DbDataReader
    GetInt64
    (System.Int64 System.Int32))
  (define-method-port
    next-result?
    System.Data.Common.DbDataReader
    NextResult
    (System.Boolean))
  (define-method-port
    get-date-time
    System.Data.Common.DbDataReader
    GetDateTime
    (System.DateTime System.Int32))
  (define-method-port
    get-ordinal
    System.Data.Common.DbDataReader
    GetOrdinal
    (System.Int32 System.String))
  (define-method-port
    get-value
    System.Data.Common.DbDataReader
    GetValue
    (System.Object System.Int32))
  (define-method-port
    get-float
    System.Data.Common.DbDataReader
    GetFloat
    (System.Single System.Int32))
  (define-method-port
    get-byte
    System.Data.Common.DbDataReader
    GetByte
    (System.Byte System.Int32))
  (define-method-port
    get-provider-specific-values
    System.Data.Common.DbDataReader
    GetProviderSpecificValues
    (System.Int32 System.Object[]))
  (define-method-port
    get-provider-specific-field-type
    System.Data.Common.DbDataReader
    GetProviderSpecificFieldType
    (System.Type System.Int32))
  (define-method-port
    get-field-type
    System.Data.Common.DbDataReader
    GetFieldType
    (System.Type System.Int32))
  (define-method-port
    dispose
    System.Data.Common.DbDataReader
    Dispose
    (System.Void))
  (define-method-port
    get-int32
    System.Data.Common.DbDataReader
    GetInt32
    (System.Int32 System.Int32))
  (define-method-port
    close
    System.Data.Common.DbDataReader
    Close
    (System.Void))
  (define-field-port
    depth
    #f
    #f
    (property:)
    System.Data.Common.DbDataReader
    Depth
    System.Int32)
  (define-field-port
    field-count
    #f
    #f
    (property:)
    System.Data.Common.DbDataReader
    FieldCount
    System.Int32)
  (define-field-port
    has-rows?
    #f
    #f
    (property:)
    System.Data.Common.DbDataReader
    HasRows
    System.Boolean)
  (define-field-port
    is-closed?
    #f
    #f
    (property:)
    System.Data.Common.DbDataReader
    IsClosed
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Common.DbDataReader
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Common.DbDataReader
    Item
    System.Object)
  (define-field-port
    records-affected
    #f
    #f
    (property:)
    System.Data.Common.DbDataReader
    RecordsAffected
    System.Int32)
  (define-field-port
    visible-field-count
    #f
    #f
    (property:)
    System.Data.Common.DbDataReader
    VisibleFieldCount
    System.Int32))
