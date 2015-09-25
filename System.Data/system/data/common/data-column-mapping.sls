(library (system data common data-column-mapping)
  (export new
          is?
          data-column-mapping?
          get-data-column-by-schema-action
          to-string
          data-set-column-get
          data-set-column-set!
          data-set-column-update!
          source-column-get
          source-column-set!
          source-column-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.Common.DataColumnMapping a ...)))))
  (define (is? a) (clr-is System.Data.Common.DataColumnMapping a))
  (define (data-column-mapping? a)
    (clr-is System.Data.Common.DataColumnMapping a))
  (define-method-port
    get-data-column-by-schema-action
    System.Data.Common.DataColumnMapping
    GetDataColumnBySchemaAction
    (static:
      System.Data.DataColumn
      System.String
      System.String
      System.Data.DataTable
      System.Type
      System.Data.MissingSchemaAction)
    (System.Data.DataColumn
      System.Data.DataTable
      System.Type
      System.Data.MissingSchemaAction))
  (define-method-port
    to-string
    System.Data.Common.DataColumnMapping
    ToString
    (System.String))
  (define-field-port
    data-set-column-get
    data-set-column-set!
    data-set-column-update!
    (property:)
    System.Data.Common.DataColumnMapping
    DataSetColumn
    System.String)
  (define-field-port
    source-column-get
    source-column-set!
    source-column-update!
    (property:)
    System.Data.Common.DataColumnMapping
    SourceColumn
    System.String))
