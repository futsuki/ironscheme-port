(library (system data sql-client sql-parameter)
  (export new
          is?
          sql-parameter?
          reset-db-type
          reset-sql-db-type
          to-string
          db-type-get
          db-type-set!
          db-type-update!
          direction-get
          direction-set!
          direction-update!
          is-nullable?-get
          is-nullable?-set!
          is-nullable?-update!
          offset-get
          offset-set!
          offset-update!
          parameter-name-get
          parameter-name-set!
          parameter-name-update!
          precision-get
          precision-set!
          precision-update!
          scale-get
          scale-set!
          scale-update!
          size-get
          size-set!
          size-update!
          source-column-get
          source-column-set!
          source-column-update!
          source-version-get
          source-version-set!
          source-version-update!
          sql-db-type-get
          sql-db-type-set!
          sql-db-type-update!
          value-get
          value-set!
          value-update!
          compare-info-get
          compare-info-set!
          compare-info-update!
          locale-id-get
          locale-id-set!
          locale-id-update!
          sql-value-get
          sql-value-set!
          sql-value-update!
          source-column-null-mapping?-get
          source-column-null-mapping?-set!
          source-column-null-mapping?-update!
          xml-schema-collection-database-get
          xml-schema-collection-database-set!
          xml-schema-collection-database-update!
          xml-schema-collection-name-get
          xml-schema-collection-name-set!
          xml-schema-collection-name-update!
          xml-schema-collection-owning-schema-get
          xml-schema-collection-owning-schema-set!
          xml-schema-collection-owning-schema-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlParameter a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlParameter a))
  (define (sql-parameter? a)
    (clr-is System.Data.SqlClient.SqlParameter a))
  (define-method-port
    reset-db-type
    System.Data.SqlClient.SqlParameter
    ResetDbType
    (System.Void))
  (define-method-port
    reset-sql-db-type
    System.Data.SqlClient.SqlParameter
    ResetSqlDbType
    (System.Void))
  (define-method-port
    to-string
    System.Data.SqlClient.SqlParameter
    ToString
    (System.String))
  (define-field-port
    db-type-get
    db-type-set!
    db-type-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    DbType
    System.Data.DbType)
  (define-field-port
    direction-get
    direction-set!
    direction-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    Direction
    System.Data.ParameterDirection)
  (define-field-port
    is-nullable?-get
    is-nullable?-set!
    is-nullable?-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    IsNullable
    System.Boolean)
  (define-field-port
    offset-get
    offset-set!
    offset-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    Offset
    System.Int32)
  (define-field-port
    parameter-name-get
    parameter-name-set!
    parameter-name-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    ParameterName
    System.String)
  (define-field-port
    precision-get
    precision-set!
    precision-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    Precision
    System.Byte)
  (define-field-port
    scale-get
    scale-set!
    scale-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    Scale
    System.Byte)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    Size
    System.Int32)
  (define-field-port
    source-column-get
    source-column-set!
    source-column-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    SourceColumn
    System.String)
  (define-field-port
    source-version-get
    source-version-set!
    source-version-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    SourceVersion
    System.Data.DataRowVersion)
  (define-field-port
    sql-db-type-get
    sql-db-type-set!
    sql-db-type-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    SqlDbType
    System.Data.SqlDbType)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    Value
    System.Object)
  (define-field-port
    compare-info-get
    compare-info-set!
    compare-info-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    CompareInfo
    System.Data.SqlTypes.SqlCompareOptions)
  (define-field-port
    locale-id-get
    locale-id-set!
    locale-id-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    LocaleId
    System.Int32)
  (define-field-port
    sql-value-get
    sql-value-set!
    sql-value-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    SqlValue
    System.Object)
  (define-field-port
    source-column-null-mapping?-get
    source-column-null-mapping?-set!
    source-column-null-mapping?-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    SourceColumnNullMapping
    System.Boolean)
  (define-field-port
    xml-schema-collection-database-get
    xml-schema-collection-database-set!
    xml-schema-collection-database-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    XmlSchemaCollectionDatabase
    System.String)
  (define-field-port
    xml-schema-collection-name-get
    xml-schema-collection-name-set!
    xml-schema-collection-name-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    XmlSchemaCollectionName
    System.String)
  (define-field-port
    xml-schema-collection-owning-schema-get
    xml-schema-collection-owning-schema-set!
    xml-schema-collection-owning-schema-update!
    (property:)
    System.Data.SqlClient.SqlParameter
    XmlSchemaCollectionOwningSchema
    System.String))