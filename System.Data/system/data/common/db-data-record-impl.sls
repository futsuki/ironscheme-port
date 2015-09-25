(library (system data common db-data-record-impl)
  (export is?
          db-data-record-impl?
          get-values
          get-chars
          get-data-type-name
          get-decimal
          get-guid
          get-boolean?
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
  (define (is? a) (clr-is System.Data.Common.DbDataRecordImpl a))
  (define (db-data-record-impl? a)
    (clr-is System.Data.Common.DbDataRecordImpl a))
  (define-method-port
    get-values
    System.Data.Common.DbDataRecordImpl
    GetValues
    (System.Int32 System.Object[]))
  (define-method-port
    get-chars
    System.Data.Common.DbDataRecordImpl
    GetChars
    (System.Int64
      System.Int32
      System.Int64
      System.Char[]
      System.Int32
      System.Int32))
  (define-method-port
    get-data-type-name
    System.Data.Common.DbDataRecordImpl
    GetDataTypeName
    (System.String System.Int32))
  (define-method-port
    get-decimal
    System.Data.Common.DbDataRecordImpl
    GetDecimal
    (System.Decimal System.Int32))
  (define-method-port
    get-guid
    System.Data.Common.DbDataRecordImpl
    GetGuid
    (System.Guid System.Int32))
  (define-method-port
    get-boolean?
    System.Data.Common.DbDataRecordImpl
    GetBoolean
    (System.Boolean System.Int32))
  (define-method-port
    get-name
    System.Data.Common.DbDataRecordImpl
    GetName
    (System.String System.Int32))
  (define-method-port
    is-dbnull?
    System.Data.Common.DbDataRecordImpl
    IsDBNull
    (System.Boolean System.Int32))
  (define-method-port
    get-int16
    System.Data.Common.DbDataRecordImpl
    GetInt16
    (System.Int16 System.Int32))
  (define-method-port
    get-string
    System.Data.Common.DbDataRecordImpl
    GetString
    (System.String System.Int32))
  (define-method-port
    get-bytes
    System.Data.Common.DbDataRecordImpl
    GetBytes
    (System.Int64
      System.Int32
      System.Int64
      System.Byte[]
      System.Int32
      System.Int32))
  (define-method-port
    get-char
    System.Data.Common.DbDataRecordImpl
    GetChar
    (System.Char System.Int32))
  (define-method-port
    get-double
    System.Data.Common.DbDataRecordImpl
    GetDouble
    (System.Double System.Int32))
  (define-method-port
    get-float
    System.Data.Common.DbDataRecordImpl
    GetFloat
    (System.Single System.Int32))
  (define-method-port
    get-int64
    System.Data.Common.DbDataRecordImpl
    GetInt64
    (System.Int64 System.Int32))
  (define-method-port
    get-date-time
    System.Data.Common.DbDataRecordImpl
    GetDateTime
    (System.DateTime System.Int32))
  (define-method-port
    get-ordinal
    System.Data.Common.DbDataRecordImpl
    GetOrdinal
    (System.Int32 System.String))
  (define-method-port
    get-value
    System.Data.Common.DbDataRecordImpl
    GetValue
    (System.Object System.Int32))
  (define-method-port
    get-field-type
    System.Data.Common.DbDataRecordImpl
    GetFieldType
    (System.Type System.Int32))
  (define-method-port
    get-int32
    System.Data.Common.DbDataRecordImpl
    GetInt32
    (System.Int32 System.Int32))
  (define-method-port
    get-byte
    System.Data.Common.DbDataRecordImpl
    GetByte
    (System.Byte System.Int32))
  (define-field-port
    field-count
    #f
    #f
    (property:)
    System.Data.Common.DbDataRecordImpl
    FieldCount
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Common.DbDataRecordImpl
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.Common.DbDataRecordImpl
    Item
    System.Object))
