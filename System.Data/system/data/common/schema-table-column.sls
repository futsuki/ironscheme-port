(library (system data common schema-table-column)
  (export is?
          schema-table-column?
          allow-dbnull
          base-column-name
          base-schema-name
          base-table-name
          column-name
          column-ordinal
          column-size
          data-type
          is-aliased
          is-expression
          is-key
          is-long
          is-unique
          non-versioned-provider-type
          numeric-precision
          numeric-scale
          provider-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Common.SchemaTableColumn a))
  (define (schema-table-column? a)
    (clr-is System.Data.Common.SchemaTableColumn a))
  (define-field-port
    allow-dbnull
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    AllowDBNull
    System.String)
  (define-field-port
    base-column-name
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    BaseColumnName
    System.String)
  (define-field-port
    base-schema-name
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    BaseSchemaName
    System.String)
  (define-field-port
    base-table-name
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    BaseTableName
    System.String)
  (define-field-port
    column-name
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    ColumnName
    System.String)
  (define-field-port
    column-ordinal
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    ColumnOrdinal
    System.String)
  (define-field-port
    column-size
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    ColumnSize
    System.String)
  (define-field-port
    data-type
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    DataType
    System.String)
  (define-field-port
    is-aliased
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    IsAliased
    System.String)
  (define-field-port
    is-expression
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    IsExpression
    System.String)
  (define-field-port
    is-key
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    IsKey
    System.String)
  (define-field-port
    is-long
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    IsLong
    System.String)
  (define-field-port
    is-unique
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    IsUnique
    System.String)
  (define-field-port
    non-versioned-provider-type
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    NonVersionedProviderType
    System.String)
  (define-field-port
    numeric-precision
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    NumericPrecision
    System.String)
  (define-field-port
    numeric-scale
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    NumericScale
    System.String)
  (define-field-port
    provider-type
    #f
    #f
    (static:)
    System.Data.Common.SchemaTableColumn
    ProviderType
    System.String))
