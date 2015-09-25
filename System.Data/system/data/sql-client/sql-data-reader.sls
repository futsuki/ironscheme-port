(library (system data sql-client sql-data-reader)
  (export is?
          sql-data-reader?
          get-sql-value
          is-dbnull?
          read?
          get-chars
          get-data-type-name
          get-decimal
          get-guid
          get-boolean?
          get-value
          get-name
          get-schema-table
          get-int16
          get-sql-boolean
          get-sql-string
          get-bytes
          get-enumerator
          get-provider-specific-values
          get-sql-binary
          get-char
          get-sql-single
          get-double
          get-sql-decimal
          get-sql-int32
          get-float
          get-string
          get-sql-double
          get-sql-money
          get-int64
          next-result?
          get-sql-byte
          get-sql-xml
          get-sql-int16
          get-date-time
          get-sql-date-time
          get-ordinal
          get-provider-specific-value
          get-sql-int64
          get-sql-guid
          get-byte
          get-sql-bytes
          get-values
          get-sql-values
          get-provider-specific-field-type
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
  (define (is? a) (clr-is System.Data.SqlClient.SqlDataReader a))
  (define (sql-data-reader? a)
    (clr-is System.Data.SqlClient.SqlDataReader a))
  (define-method-port
    get-sql-value
    System.Data.SqlClient.SqlDataReader
    GetSqlValue
    (System.Object System.Int32))
  (define-method-port
    is-dbnull?
    System.Data.SqlClient.SqlDataReader
    IsDBNull
    (System.Boolean System.Int32))
  (define-method-port
    read?
    System.Data.SqlClient.SqlDataReader
    Read
    (System.Boolean))
  (define-method-port
    get-chars
    System.Data.SqlClient.SqlDataReader
    GetChars
    (System.Int64
      System.Int32
      System.Int64
      System.Char[]
      System.Int32
      System.Int32))
  (define-method-port
    get-data-type-name
    System.Data.SqlClient.SqlDataReader
    GetDataTypeName
    (System.String System.Int32))
  (define-method-port
    get-decimal
    System.Data.SqlClient.SqlDataReader
    GetDecimal
    (System.Decimal System.Int32))
  (define-method-port
    get-guid
    System.Data.SqlClient.SqlDataReader
    GetGuid
    (System.Guid System.Int32))
  (define-method-port
    get-boolean?
    System.Data.SqlClient.SqlDataReader
    GetBoolean
    (System.Boolean System.Int32))
  (define-method-port
    get-value
    System.Data.SqlClient.SqlDataReader
    GetValue
    (System.Object System.Int32))
  (define-method-port
    get-name
    System.Data.SqlClient.SqlDataReader
    GetName
    (System.String System.Int32))
  (define-method-port
    get-schema-table
    System.Data.SqlClient.SqlDataReader
    GetSchemaTable
    (System.Data.DataTable))
  (define-method-port
    get-int16
    System.Data.SqlClient.SqlDataReader
    GetInt16
    (System.Int16 System.Int32))
  (define-method-port
    get-sql-boolean
    System.Data.SqlClient.SqlDataReader
    GetSqlBoolean
    (System.Data.SqlTypes.SqlBoolean System.Int32))
  (define-method-port
    get-sql-string
    System.Data.SqlClient.SqlDataReader
    GetSqlString
    (System.Data.SqlTypes.SqlString System.Int32))
  (define-method-port
    get-bytes
    System.Data.SqlClient.SqlDataReader
    GetBytes
    (System.Int64
      System.Int32
      System.Int64
      System.Byte[]
      System.Int32
      System.Int32))
  (define-method-port
    get-enumerator
    System.Data.SqlClient.SqlDataReader
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-provider-specific-values
    System.Data.SqlClient.SqlDataReader
    GetProviderSpecificValues
    (System.Int32 System.Object[]))
  (define-method-port
    get-sql-binary
    System.Data.SqlClient.SqlDataReader
    GetSqlBinary
    (System.Data.SqlTypes.SqlBinary System.Int32))
  (define-method-port
    get-char
    System.Data.SqlClient.SqlDataReader
    GetChar
    (System.Char System.Int32))
  (define-method-port
    get-sql-single
    System.Data.SqlClient.SqlDataReader
    GetSqlSingle
    (System.Data.SqlTypes.SqlSingle System.Int32))
  (define-method-port
    get-double
    System.Data.SqlClient.SqlDataReader
    GetDouble
    (System.Double System.Int32))
  (define-method-port
    get-sql-decimal
    System.Data.SqlClient.SqlDataReader
    GetSqlDecimal
    (System.Data.SqlTypes.SqlDecimal System.Int32))
  (define-method-port
    get-sql-int32
    System.Data.SqlClient.SqlDataReader
    GetSqlInt32
    (System.Data.SqlTypes.SqlInt32 System.Int32))
  (define-method-port
    get-float
    System.Data.SqlClient.SqlDataReader
    GetFloat
    (System.Single System.Int32))
  (define-method-port
    get-string
    System.Data.SqlClient.SqlDataReader
    GetString
    (System.String System.Int32))
  (define-method-port
    get-sql-double
    System.Data.SqlClient.SqlDataReader
    GetSqlDouble
    (System.Data.SqlTypes.SqlDouble System.Int32))
  (define-method-port
    get-sql-money
    System.Data.SqlClient.SqlDataReader
    GetSqlMoney
    (System.Data.SqlTypes.SqlMoney System.Int32))
  (define-method-port
    get-int64
    System.Data.SqlClient.SqlDataReader
    GetInt64
    (System.Int64 System.Int32))
  (define-method-port
    next-result?
    System.Data.SqlClient.SqlDataReader
    NextResult
    (System.Boolean))
  (define-method-port
    get-sql-byte
    System.Data.SqlClient.SqlDataReader
    GetSqlByte
    (System.Data.SqlTypes.SqlByte System.Int32))
  (define-method-port
    get-sql-xml
    System.Data.SqlClient.SqlDataReader
    GetSqlXml
    (System.Data.SqlTypes.SqlXml System.Int32))
  (define-method-port
    get-sql-int16
    System.Data.SqlClient.SqlDataReader
    GetSqlInt16
    (System.Data.SqlTypes.SqlInt16 System.Int32))
  (define-method-port
    get-date-time
    System.Data.SqlClient.SqlDataReader
    GetDateTime
    (System.DateTime System.Int32))
  (define-method-port
    get-sql-date-time
    System.Data.SqlClient.SqlDataReader
    GetSqlDateTime
    (System.Data.SqlTypes.SqlDateTime System.Int32))
  (define-method-port
    get-ordinal
    System.Data.SqlClient.SqlDataReader
    GetOrdinal
    (System.Int32 System.String))
  (define-method-port
    get-provider-specific-value
    System.Data.SqlClient.SqlDataReader
    GetProviderSpecificValue
    (System.Object System.Int32))
  (define-method-port
    get-sql-int64
    System.Data.SqlClient.SqlDataReader
    GetSqlInt64
    (System.Data.SqlTypes.SqlInt64 System.Int32))
  (define-method-port
    get-sql-guid
    System.Data.SqlClient.SqlDataReader
    GetSqlGuid
    (System.Data.SqlTypes.SqlGuid System.Int32))
  (define-method-port
    get-byte
    System.Data.SqlClient.SqlDataReader
    GetByte
    (System.Byte System.Int32))
  (define-method-port
    get-sql-bytes
    System.Data.SqlClient.SqlDataReader
    GetSqlBytes
    (System.Data.SqlTypes.SqlBytes System.Int32))
  (define-method-port
    get-values
    System.Data.SqlClient.SqlDataReader
    GetValues
    (System.Int32 System.Object[]))
  (define-method-port
    get-sql-values
    System.Data.SqlClient.SqlDataReader
    GetSqlValues
    (System.Int32 System.Object[]))
  (define-method-port
    get-provider-specific-field-type
    System.Data.SqlClient.SqlDataReader
    GetProviderSpecificFieldType
    (System.Type System.Int32))
  (define-method-port
    get-field-type
    System.Data.SqlClient.SqlDataReader
    GetFieldType
    (System.Type System.Int32))
  (define-method-port
    get-int32
    System.Data.SqlClient.SqlDataReader
    GetInt32
    (System.Int32 System.Int32))
  (define-method-port
    close
    System.Data.SqlClient.SqlDataReader
    Close
    (System.Void))
  (define-field-port
    depth
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDataReader
    Depth
    System.Int32)
  (define-field-port
    field-count
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDataReader
    FieldCount
    System.Int32)
  (define-field-port
    is-closed?
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDataReader
    IsClosed
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDataReader
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDataReader
    Item
    System.Object)
  (define-field-port
    records-affected
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDataReader
    RecordsAffected
    System.Int32)
  (define-field-port
    has-rows?
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDataReader
    HasRows
    System.Boolean)
  (define-field-port
    visible-field-count
    #f
    #f
    (property:)
    System.Data.SqlClient.SqlDataReader
    VisibleFieldCount
    System.Int32))
