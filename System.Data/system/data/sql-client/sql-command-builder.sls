(library (system data sql-client sql-command-builder)
  (export new
          is?
          sql-command-builder?
          derive-parameters
          unquote-identifier
          get-delete-command
          quote-identifier
          get-insert-command
          get-update-command
          data-adapter-get
          data-adapter-set!
          data-adapter-update!
          quote-prefix-get
          quote-prefix-set!
          quote-prefix-update!
          quote-suffix-get
          quote-suffix-set!
          quote-suffix-update!
          catalog-separator-get
          catalog-separator-set!
          catalog-separator-update!
          schema-separator-get
          schema-separator-set!
          schema-separator-update!
          catalog-location-get
          catalog-location-set!
          catalog-location-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.SqlClient.SqlCommandBuilder a ...)))))
  (define (is? a) (clr-is System.Data.SqlClient.SqlCommandBuilder a))
  (define (sql-command-builder? a)
    (clr-is System.Data.SqlClient.SqlCommandBuilder a))
  (define-method-port
    derive-parameters
    System.Data.SqlClient.SqlCommandBuilder
    DeriveParameters
    (static: System.Void System.Data.SqlClient.SqlCommand))
  (define-method-port
    unquote-identifier
    System.Data.SqlClient.SqlCommandBuilder
    UnquoteIdentifier
    (System.String System.String))
  (define-method-port
    get-delete-command
    System.Data.SqlClient.SqlCommandBuilder
    GetDeleteCommand
    (System.Data.SqlClient.SqlCommand System.Boolean)
    (System.Data.SqlClient.SqlCommand))
  (define-method-port
    quote-identifier
    System.Data.SqlClient.SqlCommandBuilder
    QuoteIdentifier
    (System.String System.String))
  (define-method-port
    get-insert-command
    System.Data.SqlClient.SqlCommandBuilder
    GetInsertCommand
    (System.Data.SqlClient.SqlCommand System.Boolean)
    (System.Data.SqlClient.SqlCommand))
  (define-method-port
    get-update-command
    System.Data.SqlClient.SqlCommandBuilder
    GetUpdateCommand
    (System.Data.SqlClient.SqlCommand System.Boolean)
    (System.Data.SqlClient.SqlCommand))
  (define-field-port
    data-adapter-get
    data-adapter-set!
    data-adapter-update!
    (property:)
    System.Data.SqlClient.SqlCommandBuilder
    DataAdapter
    System.Data.SqlClient.SqlDataAdapter)
  (define-field-port
    quote-prefix-get
    quote-prefix-set!
    quote-prefix-update!
    (property:)
    System.Data.SqlClient.SqlCommandBuilder
    QuotePrefix
    System.String)
  (define-field-port
    quote-suffix-get
    quote-suffix-set!
    quote-suffix-update!
    (property:)
    System.Data.SqlClient.SqlCommandBuilder
    QuoteSuffix
    System.String)
  (define-field-port
    catalog-separator-get
    catalog-separator-set!
    catalog-separator-update!
    (property:)
    System.Data.SqlClient.SqlCommandBuilder
    CatalogSeparator
    System.String)
  (define-field-port
    schema-separator-get
    schema-separator-set!
    schema-separator-update!
    (property:)
    System.Data.SqlClient.SqlCommandBuilder
    SchemaSeparator
    System.String)
  (define-field-port
    catalog-location-get
    catalog-location-set!
    catalog-location-update!
    (property:)
    System.Data.SqlClient.SqlCommandBuilder
    CatalogLocation
    System.Data.Common.CatalogLocation))
