(library (system data data-table-reader)
  (export new
          is?
          data-table-reader?
          get-values
          read?
          get-chars
          get-schema-table
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
          get-int32
          close
          depth
          field-count
          has-rows?
          is-closed?
          item
          item
          records-affected)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.DataTableReader a ...)))))
  (define (is? a) (clr-is System.Data.DataTableReader a))
  (define (data-table-reader? a) (clr-is System.Data.DataTableReader a))
  (define-method-port
    get-values
    System.Data.DataTableReader
    GetValues
    (System.Int32 System.Object[]))
  (define-method-port
    read?
    System.Data.DataTableReader
    Read
    (System.Boolean))
  (define-method-port
    get-chars
    System.Data.DataTableReader
    GetChars
    (System.Int64
      System.Int32
      System.Int64
      System.Char[]
      System.Int32
      System.Int32))
  (define-method-port
    get-schema-table
    System.Data.DataTableReader
    GetSchemaTable
    (System.Data.DataTable))
  (define-method-port
    get-data-type-name
    System.Data.DataTableReader
    GetDataTypeName
    (System.String System.Int32))
  (define-method-port
    get-decimal
    System.Data.DataTableReader
    GetDecimal
    (System.Decimal System.Int32))
  (define-method-port
    get-guid
    System.Data.DataTableReader
    GetGuid
    (System.Guid System.Int32))
  (define-method-port
    get-boolean?
    System.Data.DataTableReader
    GetBoolean
    (System.Boolean System.Int32))
  (define-method-port
    get-name
    System.Data.DataTableReader
    GetName
    (System.String System.Int32))
  (define-method-port
    is-dbnull?
    System.Data.DataTableReader
    IsDBNull
    (System.Boolean System.Int32))
  (define-method-port
    get-int16
    System.Data.DataTableReader
    GetInt16
    (System.Int16 System.Int32))
  (define-method-port
    get-string
    System.Data.DataTableReader
    GetString
    (System.String System.Int32))
  (define-method-port
    get-bytes
    System.Data.DataTableReader
    GetBytes
    (System.Int64
      System.Int32
      System.Int64
      System.Byte[]
      System.Int32
      System.Int32))
  (define-method-port
    get-char
    System.Data.DataTableReader
    GetChar
    (System.Char System.Int32))
  (define-method-port
    get-double
    System.Data.DataTableReader
    GetDouble
    (System.Double System.Int32))
  (define-method-port
    get-provider-specific-value
    System.Data.DataTableReader
    GetProviderSpecificValue
    (System.Object System.Int32))
  (define-method-port
    get-enumerator
    System.Data.DataTableReader
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    get-int64
    System.Data.DataTableReader
    GetInt64
    (System.Int64 System.Int32))
  (define-method-port
    next-result?
    System.Data.DataTableReader
    NextResult
    (System.Boolean))
  (define-method-port
    get-date-time
    System.Data.DataTableReader
    GetDateTime
    (System.DateTime System.Int32))
  (define-method-port
    get-ordinal
    System.Data.DataTableReader
    GetOrdinal
    (System.Int32 System.String))
  (define-method-port
    get-value
    System.Data.DataTableReader
    GetValue
    (System.Object System.Int32))
  (define-method-port
    get-float
    System.Data.DataTableReader
    GetFloat
    (System.Single System.Int32))
  (define-method-port
    get-byte
    System.Data.DataTableReader
    GetByte
    (System.Byte System.Int32))
  (define-method-port
    get-provider-specific-values
    System.Data.DataTableReader
    GetProviderSpecificValues
    (System.Int32 System.Object[]))
  (define-method-port
    get-provider-specific-field-type
    System.Data.DataTableReader
    GetProviderSpecificFieldType
    (System.Type System.Int32))
  (define-method-port
    get-field-type
    System.Data.DataTableReader
    GetFieldType
    (System.Type System.Int32))
  (define-method-port
    get-int32
    System.Data.DataTableReader
    GetInt32
    (System.Int32 System.Int32))
  (define-method-port
    close
    System.Data.DataTableReader
    Close
    (System.Void))
  (define-field-port
    depth
    #f
    #f
    (property:)
    System.Data.DataTableReader
    Depth
    System.Int32)
  (define-field-port
    field-count
    #f
    #f
    (property:)
    System.Data.DataTableReader
    FieldCount
    System.Int32)
  (define-field-port
    has-rows?
    #f
    #f
    (property:)
    System.Data.DataTableReader
    HasRows
    System.Boolean)
  (define-field-port
    is-closed?
    #f
    #f
    (property:)
    System.Data.DataTableReader
    IsClosed
    System.Boolean)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataTableReader
    Item
    System.Object)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataTableReader
    Item
    System.Object)
  (define-field-port
    records-affected
    #f
    #f
    (property:)
    System.Data.DataTableReader
    RecordsAffected
    System.Int32))
