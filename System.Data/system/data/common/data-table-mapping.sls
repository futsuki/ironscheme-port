(library (system data common data-table-mapping)
  (export new
          is?
          data-table-mapping?
          get-column-mapping-by-schema-action
          get-data-column
          to-string
          get-data-table-by-schema-action
          column-mappings
          data-set-table-get
          data-set-table-set!
          data-set-table-update!
          source-table-get
          source-table-set!
          source-table-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.DataTableMapping a ...)))))
  (define (is? a) (clr-is System.Data.Common.DataTableMapping a))
  (define (data-table-mapping? a)
    (clr-is System.Data.Common.DataTableMapping a))
  (define-method-port
    get-column-mapping-by-schema-action
    System.Data.Common.DataTableMapping
    GetColumnMappingBySchemaAction
    (System.Data.Common.DataColumnMapping
      System.String
      System.Data.MissingMappingAction))
  (define-method-port
    get-data-column
    System.Data.Common.DataTableMapping
    GetDataColumn
    (System.Data.DataColumn
      System.String
      System.Type
      System.Data.DataTable
      System.Data.MissingMappingAction
      System.Data.MissingSchemaAction))
  (define-method-port
    to-string
    System.Data.Common.DataTableMapping
    ToString
    (System.String))
  (define-method-port
    get-data-table-by-schema-action
    System.Data.Common.DataTableMapping
    GetDataTableBySchemaAction
    (System.Data.DataTable
      System.Data.DataSet
      System.Data.MissingSchemaAction))
  (define-field-port
    column-mappings
    #f
    #f
    (property:)
    System.Data.Common.DataTableMapping
    ColumnMappings
    System.Data.Common.DataColumnMappingCollection)
  (define-field-port
    data-set-table-get
    data-set-table-set!
    data-set-table-update!
    (property:)
    System.Data.Common.DataTableMapping
    DataSetTable
    System.String)
  (define-field-port
    source-table-get
    source-table-set!
    source-table-update!
    (property:)
    System.Data.Common.DataTableMapping
    SourceTable
    System.String))
