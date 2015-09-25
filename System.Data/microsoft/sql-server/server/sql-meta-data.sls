(library (microsoft sql-server server sql-meta-data)
  (export new
          is?
          sql-meta-data?
          infer-from-value
          adjust
          compare-options
          db-type
          locale-id
          max
          max-length
          name
          precision
          scale
          sql-db-type
          xml-schema-collection-database
          xml-schema-collection-name
          xml-schema-collection-owning-schema
          type-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.SqlServer.Server.SqlMetaData a ...)))))
  (define (is? a) (clr-is Microsoft.SqlServer.Server.SqlMetaData a))
  (define (sql-meta-data? a)
    (clr-is Microsoft.SqlServer.Server.SqlMetaData a))
  (define-method-port
    infer-from-value
    Microsoft.SqlServer.Server.SqlMetaData
    InferFromValue
    (static:
      Microsoft.SqlServer.Server.SqlMetaData
      System.Object
      System.String))
  (define-method-port
    adjust
    Microsoft.SqlServer.Server.SqlMetaData
    Adjust
    (System.String System.String)
    (System.Data.SqlTypes.SqlString System.Data.SqlTypes.SqlString)
    (System.Data.SqlTypes.SqlSingle System.Data.SqlTypes.SqlSingle)
    (System.Data.SqlTypes.SqlMoney System.Data.SqlTypes.SqlMoney)
    (System.Data.SqlTypes.SqlInt64 System.Data.SqlTypes.SqlInt64)
    (System.Data.SqlTypes.SqlInt32 System.Data.SqlTypes.SqlInt32)
    (System.Data.SqlTypes.SqlInt16 System.Data.SqlTypes.SqlInt16)
    (System.Data.SqlTypes.SqlGuid System.Data.SqlTypes.SqlGuid)
    (System.Data.SqlTypes.SqlDouble System.Data.SqlTypes.SqlDouble)
    (System.Data.SqlTypes.SqlDecimal System.Data.SqlTypes.SqlDecimal)
    (System.Data.SqlTypes.SqlDateTime System.Data.SqlTypes.SqlDateTime)
    (System.Data.SqlTypes.SqlChars System.Data.SqlTypes.SqlChars)
    (System.Data.SqlTypes.SqlBytes System.Data.SqlTypes.SqlBytes)
    (System.Data.SqlTypes.SqlByte System.Data.SqlTypes.SqlByte)
    (System.Data.SqlTypes.SqlBoolean System.Data.SqlTypes.SqlBoolean)
    (System.Data.SqlTypes.SqlBinary System.Data.SqlTypes.SqlBinary)
    (System.Single System.Single)
    (System.Object System.Object)
    (System.Int64 System.Int64)
    (System.Int32 System.Int32)
    (System.Int16 System.Int16)
    (System.Guid System.Guid)
    (System.Double System.Double)
    (System.Decimal System.Decimal)
    (System.DateTime System.DateTime)
    (System.Char[] System.Char[])
    (System.Char System.Char)
    (System.Byte[] System.Byte[])
    (System.Byte System.Byte)
    (System.Boolean System.Boolean))
  (define-field-port
    compare-options
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    CompareOptions
    System.Data.SqlTypes.SqlCompareOptions)
  (define-field-port
    db-type
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    DbType
    System.Data.DbType)
  (define-field-port
    locale-id
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    LocaleId
    System.Int64)
  (define-field-port
    max
    #f
    #f
    (static: property:)
    Microsoft.SqlServer.Server.SqlMetaData
    Max
    System.Int64)
  (define-field-port
    max-length
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    MaxLength
    System.Int64)
  (define-field-port
    name
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    Name
    System.String)
  (define-field-port
    precision
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    Precision
    System.Byte)
  (define-field-port
    scale
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    Scale
    System.Byte)
  (define-field-port
    sql-db-type
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    SqlDbType
    System.Data.SqlDbType)
  (define-field-port
    xml-schema-collection-database
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    XmlSchemaCollectionDatabase
    System.String)
  (define-field-port
    xml-schema-collection-name
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    XmlSchemaCollectionName
    System.String)
  (define-field-port
    xml-schema-collection-owning-schema
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    XmlSchemaCollectionOwningSchema
    System.String)
  (define-field-port
    type-name
    #f
    #f
    (property:)
    Microsoft.SqlServer.Server.SqlMetaData
    TypeName
    System.String))
