(library (system data odbc odbc-parameter)
  (export new
          is?
          odbc-parameter?
          reset-db-type
          reset-odbc-type
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
          odbc-type-get
          odbc-type-set!
          odbc-type-update!
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
          value-get
          value-set!
          value-update!
          source-column-null-mapping?-get
          source-column-null-mapping?-set!
          source-column-null-mapping?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Odbc.OdbcParameter a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.OdbcParameter a))
  (define (odbc-parameter? a) (clr-is System.Data.Odbc.OdbcParameter a))
  (define-method-port
    reset-db-type
    System.Data.Odbc.OdbcParameter
    ResetDbType
    (System.Void))
  (define-method-port
    reset-odbc-type
    System.Data.Odbc.OdbcParameter
    ResetOdbcType
    (System.Void))
  (define-method-port
    to-string
    System.Data.Odbc.OdbcParameter
    ToString
    (System.String))
  (define-field-port
    db-type-get
    db-type-set!
    db-type-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    DbType
    System.Data.DbType)
  (define-field-port
    direction-get
    direction-set!
    direction-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    Direction
    System.Data.ParameterDirection)
  (define-field-port
    is-nullable?-get
    is-nullable?-set!
    is-nullable?-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    IsNullable
    System.Boolean)
  (define-field-port
    odbc-type-get
    odbc-type-set!
    odbc-type-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    OdbcType
    System.Data.Odbc.OdbcType)
  (define-field-port
    parameter-name-get
    parameter-name-set!
    parameter-name-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    ParameterName
    System.String)
  (define-field-port
    precision-get
    precision-set!
    precision-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    Precision
    System.Byte)
  (define-field-port
    scale-get
    scale-set!
    scale-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    Scale
    System.Byte)
  (define-field-port
    size-get
    size-set!
    size-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    Size
    System.Int32)
  (define-field-port
    source-column-get
    source-column-set!
    source-column-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    SourceColumn
    System.String)
  (define-field-port
    source-version-get
    source-version-set!
    source-version-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    SourceVersion
    System.Data.DataRowVersion)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    Value
    System.Object)
  (define-field-port
    source-column-null-mapping?-get
    source-column-null-mapping?-set!
    source-column-null-mapping?-update!
    (property:)
    System.Data.Odbc.OdbcParameter
    SourceColumnNullMapping
    System.Boolean))
