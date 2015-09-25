(library (system data odbc odbc-meta-data-collection-names)
  (export is?
          odbc-meta-data-collection-names?
          columns
          indexes
          procedure-columns
          procedure-parameters
          procedures
          tables
          views)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Data.Odbc.OdbcMetaDataCollectionNames a))
  (define (odbc-meta-data-collection-names? a)
    (clr-is System.Data.Odbc.OdbcMetaDataCollectionNames a))
  (define-field-port
    columns
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataCollectionNames
    Columns
    System.String)
  (define-field-port
    indexes
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataCollectionNames
    Indexes
    System.String)
  (define-field-port
    procedure-columns
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataCollectionNames
    ProcedureColumns
    System.String)
  (define-field-port
    procedure-parameters
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataCollectionNames
    ProcedureParameters
    System.String)
  (define-field-port
    procedures
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataCollectionNames
    Procedures
    System.String)
  (define-field-port
    tables
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataCollectionNames
    Tables
    System.String)
  (define-field-port
    views
    #f
    #f
    (static:)
    System.Data.Odbc.OdbcMetaDataCollectionNames
    Views
    System.String))
