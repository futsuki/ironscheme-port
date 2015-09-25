(library (system data data-column)
  (export new
          is?
          data-column?
          set-ordinal
          to-string
          date-time-mode-get
          date-time-mode-set!
          date-time-mode-update!
          allow-dbnull?-get
          allow-dbnull?-set!
          allow-dbnull?-update!
          auto-increment?-get
          auto-increment?-set!
          auto-increment?-update!
          auto-increment-seed-get
          auto-increment-seed-set!
          auto-increment-seed-update!
          auto-increment-step-get
          auto-increment-step-set!
          auto-increment-step-update!
          caption-get
          caption-set!
          caption-update!
          column-mapping-get
          column-mapping-set!
          column-mapping-update!
          column-name-get
          column-name-set!
          column-name-update!
          data-type-get
          data-type-set!
          data-type-update!
          default-value-get
          default-value-set!
          default-value-update!
          expression-get
          expression-set!
          expression-update!
          extended-properties
          max-length-get
          max-length-set!
          max-length-update!
          namespace-get
          namespace-set!
          namespace-update!
          ordinal
          prefix-get
          prefix-set!
          prefix-update!
          read-only?-get
          read-only?-set!
          read-only?-update!
          table
          unique?-get
          unique?-set!
          unique?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.DataColumn a ...)))))
  (define (is? a) (clr-is System.Data.DataColumn a))
  (define (data-column? a) (clr-is System.Data.DataColumn a))
  (define-method-port
    set-ordinal
    System.Data.DataColumn
    SetOrdinal
    (System.Void System.Int32))
  (define-method-port
    to-string
    System.Data.DataColumn
    ToString
    (System.String))
  (define-field-port
    date-time-mode-get
    date-time-mode-set!
    date-time-mode-update!
    (property:)
    System.Data.DataColumn
    DateTimeMode
    System.Data.DataSetDateTime)
  (define-field-port
    allow-dbnull?-get
    allow-dbnull?-set!
    allow-dbnull?-update!
    (property:)
    System.Data.DataColumn
    AllowDBNull
    System.Boolean)
  (define-field-port
    auto-increment?-get
    auto-increment?-set!
    auto-increment?-update!
    (property:)
    System.Data.DataColumn
    AutoIncrement
    System.Boolean)
  (define-field-port
    auto-increment-seed-get
    auto-increment-seed-set!
    auto-increment-seed-update!
    (property:)
    System.Data.DataColumn
    AutoIncrementSeed
    System.Int64)
  (define-field-port
    auto-increment-step-get
    auto-increment-step-set!
    auto-increment-step-update!
    (property:)
    System.Data.DataColumn
    AutoIncrementStep
    System.Int64)
  (define-field-port
    caption-get
    caption-set!
    caption-update!
    (property:)
    System.Data.DataColumn
    Caption
    System.String)
  (define-field-port
    column-mapping-get
    column-mapping-set!
    column-mapping-update!
    (property:)
    System.Data.DataColumn
    ColumnMapping
    System.Data.MappingType)
  (define-field-port
    column-name-get
    column-name-set!
    column-name-update!
    (property:)
    System.Data.DataColumn
    ColumnName
    System.String)
  (define-field-port
    data-type-get
    data-type-set!
    data-type-update!
    (property:)
    System.Data.DataColumn
    DataType
    System.Type)
  (define-field-port
    default-value-get
    default-value-set!
    default-value-update!
    (property:)
    System.Data.DataColumn
    DefaultValue
    System.Object)
  (define-field-port
    expression-get
    expression-set!
    expression-update!
    (property:)
    System.Data.DataColumn
    Expression
    System.String)
  (define-field-port
    extended-properties
    #f
    #f
    (property:)
    System.Data.DataColumn
    ExtendedProperties
    System.Data.PropertyCollection)
  (define-field-port
    max-length-get
    max-length-set!
    max-length-update!
    (property:)
    System.Data.DataColumn
    MaxLength
    System.Int32)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Data.DataColumn
    Namespace
    System.String)
  (define-field-port
    ordinal
    #f
    #f
    (property:)
    System.Data.DataColumn
    Ordinal
    System.Int32)
  (define-field-port
    prefix-get
    prefix-set!
    prefix-update!
    (property:)
    System.Data.DataColumn
    Prefix
    System.String)
  (define-field-port
    read-only?-get
    read-only?-set!
    read-only?-update!
    (property:)
    System.Data.DataColumn
    ReadOnly
    System.Boolean)
  (define-field-port
    table
    #f
    #f
    (property:)
    System.Data.DataColumn
    Table
    System.Data.DataTable)
  (define-field-port
    unique?-get
    unique?-set!
    unique?-update!
    (property:)
    System.Data.DataColumn
    Unique
    System.Boolean))