(library (system data common db-data-record)
  (export is?
          db-data-record?
          get-values
          get-chars
          get-data-type-name
          get-decimal
          get-guid
          get-boolean?
          get-data
          get-name
          is-dbnull?
          get-int16
          get-string
          get-bytes
          get-char
          get-double
          get-float
          get-int64
          get-date-time
          get-ordinal
          get-value
          get-field-type
          get-int32
          get-byte
          field-count
          item
          item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.DbDataRecord a))
  (define (db-data-record? a)
    (clr-is System.Data.Common.DbDataRecord a))
  (define-method-port
    get-values
    System.Data.Common.DbDataRecord
    GetValues
    (System.Int32 System.Object[]))
  (define-method-port
    get-chars
    System.Data.Common.DbDataRecord
    GetChars
    (System.Int64
      System.Int32
      System.Int64
      System.Char[]
      System.Int32
      System.Int32))
  (define-method-port
    get-data-type-name
    System.Data.Common.DbDataRecord
    GetDataTypeName
    (System.String System.Int32))
  (define-method-port
    get-decimal
    System.Data.Common.DbDataRecord
    GetDecimal
    (System.Decimal System.Int32))
  (define-method-port
    get-guid
    System.Data.Common.DbDataRecord
    GetGuid
    (System.Guid System.Int32))
  (define-method-port
    get-boolean?
    System.Data.Common.DbDataRecord
    GetBoolean
    (System.Boolean System.Int32))
  (define-method-port
    get-data
    System.Data.Common.DbDataRecord
    GetData
    (System.Data.IDataReader System.Int32))
  (define-method-port
    get-name
    System.Data.Common.DbDataRecord
    GetName
    (System.String System.Int32))
  (define-method-port
    is-dbnull?
    System.Data.Common.DbDataRecord
    IsDBNull
    (System.Boolean System.Int32))
  (define-method-port
    get-int16
    System.Data.Common.DbDataRecord
    GetInt16
    (System.Int16 System.Int32))
  (define-method-port
    get-string
    System.Data.Common.DbDataRecord
    GetString
    (System.String System.Int32))
  (define-method-port
    get-bytes
    System.Data.Common.DbDataRecord
    GetBytes
    (System.Int64
      System.Int32
      System.Int64
      System.Byte[]
      System.Int32
      System.Int32))
  (define-method-port
    get-char
    System.Data.Common.DbDataRecord
    GetChar
    (System.Char System.Int32))
  (define-method-port
    get-double
    System.Data.Common.DbDataRecord
    GetDouble
    (System.Double System.Int32))
  (define-method-port
    get-float
    System.Data.Common.DbDataRecord
    GetFloat
    (System.Single System.Int32))
  (define-method-port
    get-int64
    System.Data.Common.DbDataRecord
    GetInt64
    (System.Int64 System.Int32))
  (define-method-port
    get-date-time
    System.Data.Common.DbDataRecord
    GetDateTime
    (System.DateTime System.Int32))
  (define-method-port
    get-ordinal
    System.Data.Common.DbDataRecord
    GetOrdinal
    (System.Int32 System.String))
  (define-method-port
    get-value
    System.Data.Common.DbDataRecord
    GetValue
    (System.Object System.Int32))
  (define-method-port
    get-field-type
    System.Data.Common.DbDataRecord
    GetFieldType
    (System.Type System.Int32))
  (define-method-port
    get-int32
    System.Data.Common.DbDataRecord
    GetInt32
    (System.Int32 System.Int32))
  (define-method-port
    get-byte
    System.Data.Common.DbDataRecord
    GetByte
    (System.Byte System.Int32))
  (define-field-port
    field-count
    #f
    #f
    (property:)
    System.Data.Common.DbDataRecord
    FieldCount
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Common.DbDataRecord
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Common.DbDataRecord
    Item
    System.Object))
